import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/widgets/background_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/identity/registro_civil_logo.dart';

class AuthRouterPage extends StatelessWidget {
  const AuthRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardDismissOnTap(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const Background(),
            SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: const AutoLeadingButton(
                      color: Colors.white,
                    ).horizontalPadding(20),
                  ).withRevealAnimation,
                  KeyboardVisibilityBuilder(
                    builder: (context, isKeyboardVisible) => Visibility(
                      visible: !isKeyboardVisible,
                      child: const RegistroCivilLogo()
                          .symmetricPadding(20, 30)
                          .withRevealAnimation,
                    ),
                  ),
                   Flexible(
                    child: const AutoRouter().verticalPadding(10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
