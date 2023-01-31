import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/auth_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Stepper3 extends ConsumerWidget {
  const Stepper3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TextoWidget(
            l10n.resSigPreguntas,
          ),
        ),
        TextoWidget(
          l10n.cuaSegNomPrimo,
          textAlign: TextAlign.start,
        ),
        TextFormFieldAuth(
          label: l10n.responda,
        ),
         TextoWidget(
          l10n.ciuConPadres,
          textAlign: TextAlign.start,
        ),
        TextFormFieldAuth(
          label: l10n.responda,
        ),
        ElevatedButtonWidget(
          title: l10n.siguiente,
          width: double.maxFinite,
          onPressed: () => ref.read(authStepperRiv.notifier).state++,
        ),
      ],
    );
  }
}
