import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ModalConfirmation extends StatelessWidget {
  const ModalConfirmation({
    super.key,
    required this.onConfirm,
  });
  final void Function() onConfirm;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryTitle(title: l10n.confirmacion),
            const SizedBox(height: 30),
            PrimaryText(
              l10n.confirmacionMarriageCelebration,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 30),
          ],
        ).symmetricPadding(10, 20),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryButton(
              title: l10n.siguiente,
              onPressed: () {
                onConfirm();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 10),
            PrimaryButton(
              title: l10n.cancelar,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        )
      ],
    );
  }
}
