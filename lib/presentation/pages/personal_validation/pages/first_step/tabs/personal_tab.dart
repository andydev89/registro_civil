import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/models/personal_validation/personal_validation_model.dart';
import 'package:registro_civil_apk/data/providers/personal_data_validation/personal_validation_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';

class PersonalValidationPersonalTabPage extends StatefulWidget {
  PersonalValidationPersonalTabPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
    required this.provider,
  });

  final Crud operation;
  PersonalValidationModelForm form;
  PersonalValidationRequests provider;

  @override
  State<StatefulWidget> createState() => _PersonalValidationPersonalTabPage();
}

class _PersonalValidationPersonalTabPage
    extends State<PersonalValidationPersonalTabPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  bool isEdited = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = context.l10n;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EditableReactiveTextField(
            label: l10n.nombre,
            modifiedData: widget.provider.getByKey('nombres'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.firstNameControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'nombres',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.firstNameControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'nombres');
              widget.form.firstNameControl?.updateValue(prev);
            },
          ),
          EditableReactiveTextField(
            label: l10n.apellidos,
            modifiedData: widget.provider.getByKey('apellidos'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.lastNameControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'apellidos',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.lastNameControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'apellidos');
              widget.form.lastNameControl?.updateValue(prev);
            },
          ),
          EditableReactiveDropdown<PersonalValidationGenderType>(
            label: 'Género',
            showButton: widget.operation.isCreate,
            formControl: widget.form.genderControl,
            items: PersonalValidationGenderType.values,
            // readOnly: widget.operation.isRead,
            modifiedData: widget.provider.getByKey('sexo'),
            onSavePressed: (val) {
              final type = val as PersonalValidationGenderType?;
              final original = type != null ? type.name : '';
              final modified = widget.form.genderControl?.value?.name ?? '';
              widget.provider.addRequest(
                key: 'sexo',
                model: ModifiedDataModel(
                  original: original,
                  modified: modified,
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'sexo');
              widget.form.genderControl?.updateValue(
                PersonalValidationGenderType.values
                    .firstWhere((element) => element.name == prev),
              );
            },
          ),
          EditableReactiveDropdown(
            label: l10n.estadoCiv,
            showButton: widget.operation.isCreate,
            formControl: widget.form.maritalStatusTypeControl,
            items: PersonalValidationMaritalStatusType.values,
            // readOnly: widget.operation.isRead,
            modifiedData: widget.provider.getByKey('estadoCivil'),
            onSavePressed: (val) {
              final type = val as PersonalValidationMaritalStatusType?;
              final original = type != null ? type.name : '';
              final modified =
                  widget.form.maritalStatusTypeControl?.value?.name ?? '';
              widget.provider.addRequest(
                key: 'estadoCivil',
                model: ModifiedDataModel(
                  original: original,
                  modified: modified,
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'estadoCivil');
              widget.form.maritalStatusTypeControl?.updateValue(
                PersonalValidationMaritalStatusType.values
                    .firstWhere((element) => element.name == prev),
              );
            },
          ),
        ],
      ),
    );
  }
}
