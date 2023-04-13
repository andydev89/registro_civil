import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';

class RigthLeftButtons extends StatelessWidget {
  const RigthLeftButtons({
    super.key,
    required this.rigthButtonTitle,
    this.onRigth,
    this.onLeft,
  });
  final String rigthButtonTitle;
  final void Function()? onRigth;
  final void Function()? onLeft;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        PrimaryButton(
          title: rigthButtonTitle,
          onPressed: onRigth,
        ),
        const SizedBox(
          height: 10,
        ),
        PrimaryButton(
          title: l10n.cancelar,
          onPressed: onLeft,
        ),
      ],
    );
  }
}
