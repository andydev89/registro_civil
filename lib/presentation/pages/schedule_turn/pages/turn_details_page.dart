import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_method_type.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/receipt_model.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class TurnDetailsPage extends ConsumerWidget {
  const TurnDetailsPage({
    super.key,
    required this.city,
    required this.agency,
    required this.typeOfService,
    required this.date,
    required this.time,
    required this.paymentMethod,
    required this.totalToPay,
    required this.receipt,
  });

  final String agency;
  final String city;
  final DateTime date;
  final PaymentMethodType paymentMethod;
  final ReceiptModel receipt;
  final TimeOfDay time;
  final double totalToPay;
  final TypeOfServiceModel typeOfService;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                Flexible(
                  flex: 2,
                  child: Column(
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
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Assets.svg.qrCode.svg(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: PrimaryAsyncButton(
        title: l10n.confirmar,
        onPressed: () => ref
            .read(confirmScheduleProvider(recipt: receipt).future)
            .when(
              ok: (value) => paymentMethod ==
                      PaymentMethodType.correspondentPayment
                  ? context.replaceRoute(
                      NotificationRoute(
                        notificationType: NotificationType.succes,
                        message: l10n.turnoReservadoMensajeFormal,
                        bottonTitle: l10n.turnoReservadoMensajeCorreoFormal,
                        buttonText: l10n.misTurnos,
                        onTap: (cxt) => cxt.replaceRoute(const MyTurnsRoute()),
                      ),
                    )
                  : context.replaceRoute(
                      MakePaymentRoute(
                        requestNumber: value.transactionCode,
                        buttonText: l10n.continuar,
                        service: typeOfService,
                        onTapSuccessPayment: (cxt) => context.replaceRoute(
                          NotificationRoute(
                            notificationType: NotificationType.succes,
                            message: l10n.turnoReservadoMensajeFormal,
                            bottonTitle: l10n.turnoReservadoMensajeCorreoFormal,
                            buttonText: l10n.misTurnos,
                            onTap: (cxt) =>
                                cxt.replaceRoute(const MyTurnsRoute()),
                          ),
                        ),
                      ),
                    ),
              err: (error) => showAlert(
                error.translate(context),
                TypeAlert.error,
              ),
            ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 90,
          child: PrimaryText(
            '$boldLabel:',
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.start,
          ),
        ),
        Flexible(
          child: PrimaryText(
            simpleLabel,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    ).verticalPadding(5);
  }
}
