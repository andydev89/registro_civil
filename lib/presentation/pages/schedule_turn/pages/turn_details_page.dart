import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class TurnDetailsPage extends StatelessWidget {
  const TurnDetailsPage({
    super.key,
    required this.city,
    required this.agency,
    required this.typeOfService,
    required this.date,
    required this.time,
    required this.paymentMethod,
    required this.requestNumber,
    required this.totalToPay,
  });
  final String city;
  final String agency;
  final TypeOfServiceModel typeOfService;
  final DateTime date;
  final TimeOfDay time;
  final PaymentMethodType paymentMethod;
  final int requestNumber;
  final double totalToPay;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final now = DateTime.now();
    return PrimaryScaffold(
      title: l10n.obtengaSuTurno,
      subtitle: l10n.detTurno,
      body: Column(
        children: [
          PrimaryCard(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RowLabel(
                      boldLabel: l10n.provincia,
                      simpleLabel: city,
                    ),
                    RowLabel(
                      boldLabel: l10n.agencia,
                      simpleLabel: agency,
                    ),
                    RowLabel(
                      boldLabel: l10n.servicio,
                      simpleLabel: typeOfService.translate(context),
                    ),
                    Row(
                      children: [
                        Assets.svg.calendar3.svg(),
                        const SizedBox(
                          width: 10,
                        ),
                        PrimaryText(
                          DateFormat('dd-MM-yyyy').format(date),
                        ),
                      ],
                    ).verticalPadding(5),
                    Row(
                      children: [
                        Assets.svg.clock.svg(),
                        const SizedBox(
                          width: 10,
                        ),
                        PrimaryText(
                          DateFormat.jm().format(
                            DateTime(
                              now.year,
                              now.month,
                              now.day,
                              time.hour,
                              time.minute,
                            ),
                          ),
                        ),
                      ],
                    ).verticalPadding(5),
                  ],
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Assets.svg.qrCode.svg().symmetricPadding(10, 10),
                  ).symmetricPadding(30, 30),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: PrimaryButton(
        title: l10n.confirmar,
        onPressed: () {
          if (paymentMethod == PaymentMethodType.correspondentPayment) {
            //Navegar a la vista de mostrar la confirmacion y luego a mis turnos
            context.replaceRoute(
              NotificationRoute(
                notificationType: NotificationType.succes,
                message: l10n.turnoReservadoMensajeFormal,
                bottonTitle: l10n.turnoReservadoMensajeCorreoFormal,
                buttonText: l10n.misTurnos,
                onTap: (cxt) => cxt.replaceRoute(const MyTurnsRoute()),
              ),
            );
          } else {
            //Navegar a la vista de hacer el pago
            context.replaceRoute(
              MakePaymentRoute(
                requestNumber: requestNumber,
                totalToPay: totalToPay,
                buttonText: l10n.continuar,
                onTapSuccessPayment: (cxt) => cxt.replaceRoute(
                  NotificationRoute(
                    buttonText: l10n.misTurnos,
                    message: l10n.turnoReservadoMensajeFormal,
                    bottonTitle: l10n.envNotCorElectronicoDetallesDeSolicitud,
                    notificationType: NotificationType.succes,
                    onTap: (context) =>
                        context.replaceRoute(const MyTurnsRoute()),
                  ),
                ),
              ),
            );
          }
        },
      ).symmetricPadding(10, 30),
    );
  }
}

class RowLabel extends StatelessWidget {
  const RowLabel({
    super.key,
    required this.boldLabel,
    required this.simpleLabel,
  });
  final String boldLabel;
  final String simpleLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryText(
          '$boldLabel:',
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          width: 10,
        ),
        PrimaryText(
          simpleLabel,
        ),
      ],
    ).verticalPadding(5);
  }
}
