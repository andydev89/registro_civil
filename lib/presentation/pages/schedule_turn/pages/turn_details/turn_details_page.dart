import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ShiftDetailsPage extends StatelessWidget {
  const ShiftDetailsPage({
    super.key,
    required this.city,
    required this.agency,
    required this.service,
    required this.date,
    required this.time,
  });
  final String city;
  final String agency;
  final ServiceType service;
  final DateTime date;
  final TimeOfDay time;

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
                      boldLabel: l10n.ciudad,
                      simpleLabel: city,
                    ),
                    RowLabel(
                      boldLabel: l10n.agencia,
                      simpleLabel: agency,
                    ),
                    RowLabel(
                      boldLabel: l10n.servicio,
                      simpleLabel: service.toText,
                    ),
                    Row(
                      children: [
                        Assets.svg.calendar3.svg(),
                        const SizedBox(
                          width: 10,
                        ),
                        PrimaryText(
                          DateFormat('dd-MM-yyyy').format(date),
                          color: primaryColor,
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
                          color: primaryColor,
                        ),
                      ],
                    ).verticalPadding(5),
                  ],
                ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Assets.svg.qrCode.svg().symmetricPadding(10, 10),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: PrimaryButton(
        title: l10n.ageTurno,
        onPressed: () => context.navigateTo(
          NotificationRoute(
            notificationType: NotificationType.succes,
            message: l10n.turnoReservadoMensajeFormal,
            bottonTitle: l10n.turnoReservadoMensajeCorreoFormal,
            buttonText: l10n.misTurnos,
            onTap: () => context.navigateTo(const MyTurnsRoute()),
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
      children: [
        PrimaryText(
          '$boldLabel:',
          color: primaryColor,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          width: 10,
        ),
        PrimaryText(
          simpleLabel,
          color: primaryColor,
        ),
      ],
    ).verticalPadding(5);
  }
}
