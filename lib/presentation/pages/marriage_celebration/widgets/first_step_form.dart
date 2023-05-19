import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_file_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_phone_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class FirstStepForm extends StatelessWidget {
  const FirstStepForm({
    super.key,
    this.showFilePicker = true,
    required this.formModel,
    required this.operation,
  });
  final bool showFilePicker;
  final RequestOwnerForm formModel;
  final Crud operation;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryText(l10n.numCedula),
        PrimaryReactiveNuiField(
          readOnly: operation.isRead,
          formControl: formModel.nuiControl,
        ),
        PrimaryText(l10n.nombreApe),
        PrimaryReactiveTextField(
          readOnly: operation.isRead,
          formControl: formModel.nameControl,
          textCapitalization: TextCapitalization.words,
        ),
        PrimaryText(l10n.telefono),
        PrimaryReactivePhoneField(
          readOnly: operation.isRead,
          formControl: formModel.phoneControl,
        ),
        PrimaryText(l10n.correoE),
        PrimaryReactiveEmailField(
          readOnly: operation.isRead,
          formControl: formModel.emailControl,
        ),
        Visibility(
          visible: showFilePicker && operation == Crud.create,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PrimaryReactiveFilePicker<String>(
                label: l10n.cedulaIde,
                formControl: formModel.identityCardControl,
              ),
              PrimaryReactiveFilePicker<String>(
                label: l10n.poderEsp,
                formControl: formModel.powerOfAttorneyControl,
              ),
            ],
          ),
        )
      ],
    );
  }
}
