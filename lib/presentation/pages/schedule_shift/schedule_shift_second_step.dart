import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/schedule_shift/schedule_shift_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_shift/widgets/schedule_shift_scaffold.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_form_field.dart';

class ScheduleShiftSecondStepPage extends StatelessWidget {
  const ScheduleShiftSecondStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ScheduleShiftSecondStepModelFormBuilder(
      builder: (context, formModel, child) => ScheduleShiftScaffold(
        title: l10n.realizarPago,
        subtitle: l10n.introduzcaCodigoBancario,
        body: Center(
          child: PrimaryReactiveFormField(
            formControl: formModel.codeControl,
            label: l10n.codigo,
            ligthTheme: false,
            hintText: '${l10n.escriba}...',
          ).symmetricPadding(40, 40),
        ),
        bottomNavigationBar: ReactiveScheduleShiftSecondStepModelFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: l10n.continuar,
            onPressed: formModel.form.valid
                ? () => context.navigateTo(const ScheduleShiftThirdStepRoute())
                : null,
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
