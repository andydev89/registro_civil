import 'package:flutter/material.dart';
import 'package:flutter_expanded_tile/flutter_expanded_tile.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/my_turn_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/colored_uppercase.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MyTurnExpandableCard extends StatelessWidget {
  const MyTurnExpandableCard({
    super.key,
    required this.data,
  });
  final MyTurnExpandableCardModel data;

  @override
  Widget build(BuildContext context) {
    final controller = ExpandedTileController();
    final rotation = ValueNotifier<double>(0);
    controller.addListener(() {
      rotation.value = controller.isExpanded ? 0 : 0.25;
    });
    final l10n = context.l10n;
    final now = DateTime.now();
    return PrimaryCard(
      child: ExpandedTile(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ValueListenableBuilder(
                  valueListenable: rotation,
                  builder: (context, value, child) => AnimatedRotation(
                    duration: const Duration(milliseconds: 100),
                    turns: value,
                    child: Assets.svg.rigthArrow.svg(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                PrimaryLabel(
                  '${l10n.reservacion} # ${data.id}',
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            DescriptionRow(
              label: l10n.servicio,
              text: data.service.translate(context),
            ),
            DescriptionRow(
              label: l10n.fecha,
              text: DateFormat.yMd().format(data.date),
            ),
            DescriptionRow(
              label: l10n.hora,
              text: DateFormat.jm().format(
                DateTime(
                  now.year,
                  now.month,
                  now.day,
                  data.time.hour,
                  data.time.minute,
                ),
              ),
            ),
          ],
        ),
        content: Column(
          children: [
            DescriptionRow(
              label: l10n.ciudad,
              text: data.city,
            ),
            DescriptionRow(
              label: l10n.agencia,
              text: data.agency,
            ),
            DescriptionRow(
              label: l10n.estado,
              text: data.state,
              isTextColoredUpperCase: true,
            ),
            const SizedBox(
              height: 20,
            ),
            PrimaryButton(
              title: 'Mostrar dialog',
              onPressed: () => showAcceptCancelDialog<void>(
                context,
                title: l10n.confirmacion,
                message: l10n.seguroCancelarTurno,
              ),
            ),
          ],
        ),
        trailing: null,
        controller: controller,
        theme: const ExpandedTileThemeData(
          headerColor: Colors.white,
          contentBackgroundColor: Colors.white,
          contentPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          headerPadding: EdgeInsets.zero,
        ),
      ),
    );
  }
}

class DescriptionRow extends StatelessWidget {
  const DescriptionRow({
    super.key,
    required this.label,
    required this.text,
    this.isTextColoredUpperCase = false,
    this.coloredUpperCaseColor = ligthBlue,
  });

  final String label;
  final String text;
  final bool isTextColoredUpperCase;
  final Color coloredUpperCaseColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PrimaryText(label),
        Visibility(
          visible: !isTextColoredUpperCase,
          replacement: ColoredUppercase(
            title: text,
            color: coloredUpperCaseColor,
          ),
          child: PrimaryCaption(text),
        ),
      ],
    ).verticalPadding(5);
  }
}
