import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/auth_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Stepper1 extends ConsumerWidget {
  const Stepper1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextoWidget(l10n.ingNumCedula),
        TextFormFieldAuth(
          label: l10n.numCedula,
          prefixIcon: Icons.payment,
          textInputType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
        ElevatedButtonWidget(
          title: 'Validar',
          onPressed: () => ref.read(authStepperRiv.notifier).state++,
          width: double.maxFinite,
        ),
      ],
    );
  }
}
