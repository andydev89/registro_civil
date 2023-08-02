import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class HorizontalSpinner extends StatelessWidget {
  const HorizontalSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 18,
          width: 18,
          child: CircularProgressIndicator(
            color: primaryColor,
            strokeWidth: 2,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        PrimaryText('${l10n.cargando}...'),
      ],
    ).verticalPadding(4);
  }
}
