import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/another_stepper_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class RegisterRouterPage extends StatelessWidget {
  const RegisterRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AuthCard(
      child: AutoRouter(
        builder: (context, content) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryTitle(
              title: l10n.regCuenta,
            ),
            Consumer(
              builder: (context, ref, child) {
                final index = ref.watch(stepperIndexProvider);
                return AnotherStepperWidget(
                  activeIndex: index,
                  totalElement: 4,
                ).verticalPadding(20);
              },
            ),
            Flexible(child: content),
          ],
        ),
      ),
    );
  }
}
