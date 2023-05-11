import 'package:auto_route/auto_route.dart';
import 'package:fk_user_agent/fk_user_agent.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/models/payment/client_data_to_pay_model.dart';
import 'package:registro_civil_apk/data/models/payment/place_to_pay_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/data/providers/payment/payment_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_phone_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MakePaymentPage extends ConsumerWidget {
  const MakePaymentPage({
    super.key,
    this.requestNumber,
    required this.buttonText,
    required this.service,
    this.onTapSuccessPayment,
    this.onTapFailedPayment,
  });
  final String? requestNumber;
  final String buttonText;
  final TypeServiceModel service;
  final void Function(BuildContext context)? onTapSuccessPayment;
  final void Function(BuildContext context)? onTapFailedPayment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return ClientDataToPayModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.realizarPago,
        subtitle: l10n.datosDelCliente,
        body: Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (requestNumber != null)
                    Flexible(
                      child: PrimaryText(
                        '${l10n.solicitud} # $requestNumber',
                        color: blue,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  else
                    Container(),
                  Flexible(
                    child: PrimaryText(
                      '${l10n.totalPagar} \$'
                      '${service.total.toStringAsFixed(2)}',
                      color: blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryReactiveTextField(
                        label: l10n.nombre,
                        formControl: formModel.nameControl,
                        textCapitalization: TextCapitalization.words,
                      ),
                      PrimaryReactiveTextField(
                        label: l10n.apellidos,
                        formControl: formModel.lastNameControl,
                        textCapitalization: TextCapitalization.words,
                      ),
                      PrimaryReactiveTextField(
                        label: l10n.direccion,
                        formControl: formModel.addressControl,
                      ),
                      SelectElementFromApi(
                        formControl: formModel.provinceControl,
                        label: l10n.provincia,
                        provider: provincesProvider,
                      ),
                      SelectElementFromApi(
                        formControl: formModel.cityControl,
                        label: l10n.ciudad,
                        provider: cantonProvider,
                      ),
                      PrimaryReactivePhoneField(
                        label: l10n.telefonoCel,
                        formControl: formModel.phoneControl,
                      ),
                      PrimaryReactiveEmailField(
                        label: l10n.correoE,
                        formControl: formModel.emailControl,
                      ),
                      PrimaryReactiveTextField(
                        label: l10n.codigoPostal,
                        formControl: formModel.postalCodeControl,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        keyboardType: TextInputType.number,
                      ),
                      PrimaryCaption(
                        l10n.enCasoDeTenerProblemasEscribanosA,
                        color: blue,
                        textAlign: TextAlign.start,
                      ),
                      // TODO(alejandro): hacer esto un link al correo
                      const PrimaryCaption(
                        'enlinea@registrocivil.gob.ec',
                        color: blue,
                        fontWeight: FontWeight.bold,
                      )
                    ],
                  ).horizontalPadding(20),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ReactiveClientDataToPayModelFormConsumer(
          builder: (context, formModel, child) => PrimaryAsyncButton(
            title: l10n.confirmarPago,
            onPressed: formModel.form.valid
                ? () async {
                    final user = await ref.read(meProvider.future);
                    final buyerAndShipping = Buyer(
                      address: Address(
                        city: formModel.model.city.name,
                        country: 'ECUADOR',
                        estate: formModel.model.province.name,
                        phone: formModel.model.phone,
                        postalCode: formModel.model.postalCode.toString(),
                        street: formModel.model.address,
                      ),
                      name: formModel.model.name,
                      surname: formModel.model.lastName,
                      mobile: formModel.model.phone,
                      email: formModel.model.email,
                      cedula: user.identification,
                    );
                    final deviceIp = await ref.read(deviceIpProvider.future);
                    final placeToPay = PlaceToPayModel(
                      buyer: buyerAndShipping,
                      payment: Payment(
                        amount: Amount(
                          taxes: [
                            Taxes(
                              iva: service.iva,
                              productPrice: service.price,
                            ),
                          ],
                          total: service.total,
                        ),
                        shipping: buyerAndShipping,
                        description: service.name,
                        serviceType: service.type.toText,
                      ),
                      userAgent: FkUserAgent.userAgent!,
                      ipAddress: deviceIp.ip,
                      expiration: DateTime.now()
                          .add(const Duration(minutes: 15))
                          .toString(),
                      returnUrl:
                          'http://payment.registro-civil.ddns.net/transaction_done',
                      cancelUrl:
                          'http://payment.registro-civil.ddns.net/transaction_canceled',
                    );
                    final result = await ref.read(
                      createPlaceToPayTransactionProvider(
                        placeToPayModel: placeToPay,
                      ).future,
                    );
                    result.when(
                      ok: (data) => context.replaceRoute(
                        WebviewPaymentRoute(
                          url: data.processUrl,
                          onPageFinished: () => NotificationRoute(
                            buttonText: buttonText,
                            message: l10n.pagoRealizadoConExito,
                            notificationType: NotificationType.success,
                            title: l10n.confirmacionDePago,
                            onTap: onTapSuccessPayment,
                            description: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // TODO(alejandro): traducir los textos
                              children: [
                                PrimaryCaption(
                                  'Pagado:'
                                  ' \$${service.total.toStringAsFixed(2)}',
                                ),
                                PrimaryCaption(
                                  'Número de transacción:'
                                  ' ${data.paymentGatewayReference}',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      err: (error) => showAlert(
                        error.translate(context),
                        TypeAlert.error,
                      ),
                    );
                  }
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
