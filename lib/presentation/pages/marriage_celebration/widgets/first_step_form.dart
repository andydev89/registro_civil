import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_file_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_phone_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class FirstStepForm extends StatelessWidget {
  const FirstStepForm({
    super.key,
    this.showFilePicker = true,
    required this.formModel,
  });
  final bool showFilePicker;
  final RequestOwnerForm formModel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryText(l10n.numCedula),
        PrimaryReactiveNuiField(
          formControl: formModel.nuiControl,
        ),
        PrimaryText(l10n.nombreApe),
        PrimaryReactiveTextField(
          formControl: formModel.nameControl,
          textCapitalization: TextCapitalization.words,
        ),
        PrimaryText(l10n.telefono),
        PrimaryReactivePhoneField(
          formControl: formModel.phoneControl,
        ),
        PrimaryText(l10n.correoE),
        PrimaryReactiveEmailField(
          formControl: formModel.emailControl,
        ),
        Visibility(
          visible: showFilePicker,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryText(l10n.cedulaIde),
              PrimaryFilePicker(
                formControl: formModel.identityCardControl,
              ),
              PrimaryText(l10n.poderEsp),
              PrimaryFilePicker(
                formControl: formModel.powerOfAttorneyControl,
              ),
            ],
          ),
        )
      ],
    );
  }
}
