import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
    this.title,
    this.subtitle,
  });

  final String? subtitle;
  final String? title;

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
                title ?? l10n.regSatisfactorio,
                color: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              if (subtitle != null)
                PrimaryText(
                  subtitle!,
                  color: Colors.white,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
