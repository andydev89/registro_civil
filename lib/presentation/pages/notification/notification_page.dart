import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
// import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
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
    this.description,
    this.bottomText,
  });
  final String? title;
  final String? subtitle;
  final String? message;
  final String? bottonTitle;
  final String buttonText;
  final NotificationType notificationType;
  final void Function(BuildContext context)? onTap;
  final Widget? description;
  final String? bottomText;

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return PrimaryScaffold(
      title: title ?? '',
      subtitle: subtitle ?? '',
      body: Expanded(
        child: Column(
          children: [
            notificationType.image,
            if (message != null) PrimaryText(message!),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (description != null) description!,
                  if (bottonTitle != null)
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: PrimaryText(
                        bottonTitle!,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PrimaryAsyncButton(
            title: buttonText,
            onPressed: () {
              return Future(() => onTap?.call(context));
            },
          ),
          if (bottomText != null)
            PrimaryText(
              bottomText!,
              maxLines: 3,
            ).verticalPadding(5),
        ],
      ).symmetricPadding(10, 30),
    );
  }
}
