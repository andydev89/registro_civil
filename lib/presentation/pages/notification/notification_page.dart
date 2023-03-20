import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({
    super.key,
    this.title,
    this.subtitle,
    this.message,
    this.bottonTitle,
    required this.buttonText,
    required this.notificationType,
    this.onTap,
  });
  final String? title;
  final String? subtitle;
  final String? message;
  final String? bottonTitle;
  final String buttonText;
  final NotificationType notificationType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: title ?? '',
      subtitle: subtitle ?? '',
      body: Expanded(
        child: Column(
          children: [
            notificationType.image,
            if (message != null)
              PrimaryLabel(
                message!,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            const Spacer(),
            if (bottonTitle != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: PrimaryText(
                  bottonTitle!,
                  color: primaryColor,
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: PrimaryButton(
        title: l10n.misTurnos,
        onPressed: onTap,
      ).symmetricPadding(10, 30),
    );
  }
}
