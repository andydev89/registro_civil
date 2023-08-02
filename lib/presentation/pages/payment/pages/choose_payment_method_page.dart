import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ChoosePaymentMethodPage extends ConsumerWidget {
  const ChoosePaymentMethodPage({
    super.key,
    required this.service,
    required this.transactionCode,
    this.requestNumber,
    this.isTurn = false,
  });

  final TypeServiceModel service;
  final String transactionCode;
  final String? requestNumber;
  final bool isTurn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return ScheduleTurnFirstStepPersonalModelFormBuilder(
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.seleccioneMetodoPago,
        body: SingleChildScrollView(
          child: Column(
            children: [
              PaymentSelector(
                label: l10n.seleccioneMetodoPago,
                formControl: formModel.paymentMethodControl,
                paymentMethods: isTurn
                    ? PaymentMethodType.values
                    : [PaymentMethodType.placeToPay],
              ).verticalPadding(20),
            ],
          ),
        ),
        bottomNavigationBar:
            ReactiveScheduleTurnFirstStepPersonalModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () => formModel.model.paymentMethod ==
                        PaymentMethodType.correspondentPayment
                    ? context.replaceRoute(
                        NotificationRoute(
                          notificationType: NotificationType.success,
                          message: l10n.turnoReservadoMensajeFormal,
                          bottonTitle: l10n.turnoReservadoMensajeCorreoFormal,
                          buttonText: l10n.misTurnos,
                          onTap: (cxt) =>
                              cxt.replaceRoute(const MyTurnsRoute()),
                        ),
                      )
                    : context.replaceRoute(
                        MakePaymentRoute(
                          buttonText: l10n.continuar,
                          transactionCode: transactionCode,
                          service: service,
                          onTapSuccessPayment: (cxt) => context.replaceRoute(
                            NotificationRoute(
                              notificationType: NotificationType.success,
                              message: l10n.turnoReservadoMensajeFormal,
                              bottonTitle:
                                  l10n.turnoReservadoMensajeCorreoFormal,
                              buttonText: l10n.misTurnos,
                              onTap: (cxt) =>
                                  cxt.replaceRoute(const MyTurnsRoute()),
                            ),
                          ),
                        ),
                      ) // }

                : null,
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
