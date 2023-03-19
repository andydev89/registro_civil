import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ScheduleShiftScaffold extends StatelessWidget {
  const ScheduleShiftScaffold({
    super.key,
    required this.body,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });
  final Widget body;
  final String title;
  final String subtitle;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: primaryColor,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: PrimaryTitle(
            textAlign: TextAlign.start,
            title: title,
            color: primaryColor,
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              PrimaryText(
                subtitle,
                color: primaryColor,
                textAlign: TextAlign.end,
              ).verticalPadding(20),
              body,
            ],
          ),
        ),
        persistentFooterButtons: [
          PrimaryButton(title: buttonText).symmetricPadding(10, 30),
        ],
      ),
    );
  }
}
