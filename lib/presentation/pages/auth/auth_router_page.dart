import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/widgets/background_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/identity/registro_civil_logo.dart';

class AuthRouterPage extends StatelessWidget {
  const AuthRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const RegistroCivilLogo()
                    .symmetricPadding(20, 30)
                    .withRevealAnimation,
                const Flexible(
                  child: AutoRouter(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
