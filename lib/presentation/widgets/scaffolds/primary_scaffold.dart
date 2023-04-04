import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class PrimaryScaffold extends StatelessWidget {
  const PrimaryScaffold({
    super.key,
    required this.body,
    required this.title,
    this.subtitle,
    this.bottomNavigationBar,
  });
  final Widget body;
  final String title;
  final String? subtitle;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: KeyboardDismissOnTap(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            foregroundColor: primaryColor,
            backgroundColor: Colors.transparent,
            leading: const AutoLeadingButton().verticalPadding(15),
            elevation: 0,
            centerTitle: true,
            title: Container(
              margin: const EdgeInsets.only(top: 10),
              child: PrimaryTitle(
                title: title,
                color: primaryColor,
                maxlines: 4,
              ),
            ),
          ),
          body: Column(
            children: [
              if (subtitle != null)
                PrimaryText(
                  subtitle!,
                ).symmetricPadding(20, 30),
              body,
            ],
          ).horizontalPadding(20),
          bottomNavigationBar:
              bottomNavigationBar == null ? null : bottomNavigationBar!,
        ),
      ),
    );
  }
}
