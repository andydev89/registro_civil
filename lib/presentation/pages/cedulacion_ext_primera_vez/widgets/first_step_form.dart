import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_email_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_file_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_phone_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

import '../../../widgets/widgets.dart';

class CedExtFirstStepForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PrimaryText('numero de Visa'),
        PrimaryReactiveNuiField(
          label: 'numero de visa', //l10n.numCedula,
          formControl: FormControl<dynamic>(
            validators: [
              Validators.composeOR([
                Validators.email,
                // Validators.pattern(phonePattern),
              ])
            ],
          ),
          init: true,
          readOnly: false,
        ),
        PrimaryText(l10n.correoE),
        /* PrimaryReactiveTextField(
          readOnly: false,
          //  formControl: formModel.nameControl,
          textCapitalization: TextCapitalization.words,
        ),*/
      ],
    );
  }
}
