import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/models/payment/client_data_to_pay_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MakePaymentPage extends StatelessWidget {
  const MakePaymentPage({
    super.key,
    required this.requestNumber,
    required this.totalToPay,
    required this.buttonText,
    this.onTapSuccessPayment,
    this.onTapFailedPayment,
  });
  final int requestNumber;
  final double totalToPay;
  final String buttonText;
  final void Function(BuildContext context)? onTapSuccessPayment;
  final void Function(BuildContext context)? onTapFailedPayment;

  @override
  Widget build(BuildContext context) {
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
                  PrimaryText('${l10n.solicitud} # $requestNumber'),
                  PrimaryText(
                    '${l10n.totalPagar} \$ ${totalToPay.toStringAsFixed(2)}',
                  ),
                ],
              ).horizontalPadding(20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryReactiveTextField(
                        label: l10n.nombre,
                        formControl: formModel.nameControl,
                      ),
                      PrimaryReactiveTextField(
                        label: l10n.apellidos,
                        formControl: formModel.lastNameControl,
                      ),
                      PrimaryReactiveTextField(
                        label: l10n.direccion,
                        formControl: formModel.addressControl,
                      ),
                      PrimaryReactiveTextField(
                        label: l10n.provincia,
                        formControl: formModel.provinceControl,
                      ),
                      PrimaryReactiveTextField(
                        label: l10n.ciudad,
                        formControl: formModel.cityControl,
                      ),
                      // TODO(alejandro): crear un componente 
                      //reactivo para los telefonos
                      PrimaryReactiveTextField(
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
                  ).horizontalPadding(40),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ReactiveClientDataToPayModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.confirmarPago,
            onPressed: formModel.form.valid
                // TODO(alejandro): aqui hacer la logica de pagar
                //mostrar el cargando y luego la respuesta
                ? () => context.replaceRoute(
                      NotificationRoute(
                        buttonText: buttonText,
                        message: l10n.pagoRealizadoConExito,
                        notificationType: NotificationType.succes,
                        title: l10n.confirmacionDePago,
                        onTap: onTapSuccessPayment,
                        description: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryCaption(
                              'Pagado: \$${totalToPay.toStringAsFixed(2)}',
                            ),
                            const PrimaryCaption(
                              'Número de transacción: NKV00023',
                            ),
                          ],
                        ),
                      ),
                    )
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
