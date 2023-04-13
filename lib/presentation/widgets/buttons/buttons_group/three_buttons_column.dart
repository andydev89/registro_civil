import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';

class ThreeButtonsColumn extends StatelessWidget {
  const ThreeButtonsColumn({
    super.key,
    required this.firstButtonText,
    required this.secondButtonText,
    this.onFirsButtonTap,
    this.onSecondButtonTap,
    this.onCancelButtonTap,
  });
  final String firstButtonText;
  final String secondButtonText;
  final void Function()? onFirsButtonTap;
  final void Function()? onSecondButtonTap;
  final void Function()? onCancelButtonTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        PrimaryButton(
          title: firstButtonText,
          onPressed: onFirsButtonTap,
        ),
        const SizedBox(
          height: 10,
        ),
        PrimaryButton(
          title: secondButtonText,
          onPressed: onSecondButtonTap,
        ),
        const SizedBox(
          height: 10,
        ),
        PrimaryButton(
          title: l10n.cancelar,
          onPressed: onCancelButtonTap,
        ),
      ],
    );
  }
}
