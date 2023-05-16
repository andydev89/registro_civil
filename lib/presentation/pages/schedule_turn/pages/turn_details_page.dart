import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

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
  final TypeServiceModel typeOfService;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final now = DateTime.now();
    return PrimaryScaffold(
      title: '${l10n.obtengaSuTurno}: ${typeOfService.name}',
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
                      PrimaryRowLabel(
                        boldLabel: l10n.provincia,
                        simpleLabel: city,
                      ),
                      PrimaryRowLabel(
                        boldLabel: l10n.agencia,
                        simpleLabel: agency,
                      ),
                      PrimaryRowLabel(
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
                const SizedBox(width: 10),
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
                        notificationType: NotificationType.success,
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
                            notificationType: NotificationType.success,
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
