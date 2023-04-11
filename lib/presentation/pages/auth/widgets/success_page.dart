import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/success_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TranslucentCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SuccessWidget().symmetricPadding(20, 50),
          Column(
            children: [
              PrimaryLabel(
                l10n.regSatisfactorio,
                color: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              PrimaryLabel(
                l10n.envCorreo,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
