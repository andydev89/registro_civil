import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/turn_details_page.dart';

class CardMarriageWidget extends StatelessWidget {
  const CardMarriageWidget({
    super.key,
    required this.marriage,
    this.onTap,
  });
  final ResponseMarriageModel marriage;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;  
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          children: [
            RowLabel(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              boldLabel: l10n.propietario,
              simpleLabel: marriage.requestOwnerName,
            ),
            RowLabel(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              boldLabel: l10n.fechaCreacion,
              simpleLabel: '${marriage.creationDate.onlyDate} -'
                  ' ${marriage.creationDate.onlyTime}',
            ),
            RowLabel(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              boldLabel: l10n.provincia,
              simpleLabel: marriage.provinceName,
            ),
            RowLabel(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              boldLabel:l10n.agencia,
              simpleLabel: marriage.agencyName,
            ),
            RowLabel(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              boldLabel: l10n.estado,
              simpleLabel: marriage.state,
            ),
          ],
        ).symmetricPadding(20, 20),
      ),
    );
  }
}
