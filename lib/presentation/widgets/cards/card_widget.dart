import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/turn_details_page.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class CardWidget<T> extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.rows,
    required this.actions,
    required this.element,
  });
  final T element;
  final Map<String, String> rows;
  final Map<Crud, void Function(T)> actions;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryCard(
      child: Column(
        children: [
          ...rows.entries.map(
            (e) => RowLabel(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              boldLabel: e.key,
              simpleLabel: e.value,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PrimaryText(
                '${l10n.accion}:',
                fontWeight: FontWeight.bold,
              ),
              Row(
                children: [
                  ...actions.entries.map(
                    (e) => IconButton(
                      onPressed: () => e.value.call(element),
                      icon: e.key.toIcon(context),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ).verticalPadding(10);
  }
}
