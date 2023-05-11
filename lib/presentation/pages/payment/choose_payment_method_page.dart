import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/schedule_turn_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/payment_selector.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class ChoosePaymentMethodPage extends ConsumerWidget {
  const ChoosePaymentMethodPage({
    super.key,
    required this.service,
  });
  final TypeServiceModel service;

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
                paymentMethods: PaymentMethodType.values,
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
