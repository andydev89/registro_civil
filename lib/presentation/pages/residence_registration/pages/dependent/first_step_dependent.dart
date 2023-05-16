import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_dependent_relation.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_dropdown.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_nui_field.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class FirstStepDependentPage extends ConsumerWidget {
  const FirstStepDependentPage({
    super.key,
    this.operation = Crud.create,
    this.dependent,
    required this.residenceId,
  });
  final Crud operation;
  final Dependent? dependent;
  final String residenceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return DependentFormBuilder(
      model: dependent,
      initState: (context, formModel) => formModel
        ..nuiDependentsControl.setValidators(
          [
            requiredValidator,
            ecuadorDniValidator,
            length10Validator,
            (control) => notRepeat(
                  control,
                  ref.watch(resRegProvider.notifier).dependentsFromResidence(
                        residenceId,
                        actual: dependent,
                      ),
                )
          ],
        )
        ..dateControl.value = DateTime.now().toString()
        ..stateControl.value = Status.active,
      builder: (context, formModel, child) => PrimaryScaffold(
        title: l10n.registroRes,
        subtitle: l10n.ingreseInfSol,
        body: SingleChildScrollView(
          child: Column(
            children: [
              PrimaryReactiveNuiField(
                readOnly: operation == Crud.read,
                label: l10n.numCedula,
                formControl: formModel.nuiDependentsControl,
              ),
              PrimaryReactiveTextField(
                readOnly: operation == Crud.read,
                label: l10n.nombre,
                formControl: formModel.nameControl,
                textCapitalization: TextCapitalization.words,
              ),
              PrimaryReactiveTextField(
                readOnly: operation == Crud.read,
                label: l10n.apellidos,
                formControl: formModel.lastnameControl,
                textCapitalization: TextCapitalization.words,
              ),
              PrimaryReactiveDropdown(
                readOnly: operation == Crud.read,
                label: l10n.parentezco,
                formControl: formModel.relationshipControl,
                items: ResidentialDependentRelation.items,
              ),
            ],
          ).horizontalPadding(20),
        ),
        bottomNavigationBar: ReactiveDependentFormConsumer(
          builder: (context, formModel, child) => PrimaryButton(
            title: operation == Crud.read ? l10n.aceptar : l10n.guardar,
            onPressed: formModel.form.valid
                ? () {
                    if (operation == Crud.create) {
                      ref
                          .read(resRegProvider.notifier)
                          .addDependent(residenceId, formModel.model);
                      showAlert(l10n.dependienteGuardadoCor, TypeAlert.success);
                    }
                    context.popRoute();
                  }
                : null,
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
