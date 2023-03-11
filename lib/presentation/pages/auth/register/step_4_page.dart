import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Step4Page extends ConsumerWidget {
  const Step4Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).index--;
        return Future(() => true);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: PrimaryLabel(
              l10n.ingDatos,
            ),
          ),
          TextFormFieldAuth(
            label: l10n.correoE,
          ),
          TextFormFieldAuth(
            label: l10n.password,
            suffixIcon: Icons.remove_red_eye,
            colorSuffixIcon: Colors.white,
          ),
          TextFormFieldAuth(
            label: l10n.confirmarContrasena,
            suffixIcon: Icons.remove_red_eye,
            colorSuffixIcon: Colors.white,
          ),
          ElevatedButtonWidget(
            title: l10n.registrar,
            width: double.maxFinite,
            onPressed: () => context.replaceRoute(
              SuccessRoute(
                child: Column(
                  children: [
                    PrimaryLabel(
                      l10n.regSatisfactorio,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryLabel(l10n.envCorreo),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
