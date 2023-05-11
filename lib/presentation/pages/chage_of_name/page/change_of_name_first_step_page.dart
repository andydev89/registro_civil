import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/change_of_name/change_of_name.dart';
import 'package:registro_civil_apk/data/enum/commons/file_extensions.dart';
import 'package:registro_civil_apk/data/models/change_of_name/change_of_name_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_file_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_radio_group.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_area_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ChangeOfNameFirstStepPage extends StatelessWidget {
  const ChangeOfNameFirstStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: 'Infiormación para el servicio',
      body: ChangeOfNameModelFormBuilder(
        builder: (context, formModel, child) => Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const PrimaryText(
                  'Seleccione el tipo de cambio de nombre a realizar:',
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                ).verticalPadding(10),
                PrimaryReactiveRadioGroup(
                  elements: ChangeOfNameType.values,
                  formControl: formModel.changeOfNameTypeControl,
                ),
                const SizedBox(
                  height: 20,
                ),
                const PrimaryText(
                  'Ingrese la propuesta de nombre:',
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.name1Control,
                  label: 'Nombre 1',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.name2Control,
                  label: 'Nombre 2',
                ),
                PrimaryReactiveTextField(
                  formControl: formModel.resultingNameControl,
                  label: 'Nombre resultante',
                ),
                PrimaryReactiveFilePicker(
                  formControl: formModel.documentControl,
                  // allowedExtensions: const [
                  //   FileExtension.jpg,
                  //   FileExtension.jpeg,
                  // ],
                ),
                PrimaryReactiveTextAreaField(
                  formControl: formModel.observationsControl,
                  label: 'Observaciones',
                ),
                ReactiveChangeOfNameModelFormConsumer(
                  builder: (context, formModel, child) => PrimaryButton(
                    title: l10n.aceptar,
                    onPressed: formModel.form.valid ? () {} : null,
                  ),
                ),
                PrimaryButton(
                  title: l10n.cancelar,
                  onPressed: () => context.popRoute(),
                ).verticalPadding(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
