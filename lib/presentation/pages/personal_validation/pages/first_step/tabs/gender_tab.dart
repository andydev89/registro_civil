import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/personal_validation/personal_validation_model.dart';
import 'package:registro_civil_apk/data/providers/personal_data_validation/personal_validation_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class GenderValidationPersonalTabPage extends StatefulWidget {
  GenderValidationPersonalTabPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
    required this.provider,
  });

  final Crud operation;
  PersonalValidationModelForm form;
  PersonalValidationRequests provider;

  @override
  State<StatefulWidget> createState() => _GenderValidationPersonalTabPage();
}

class _GenderValidationPersonalTabPage
    extends State<GenderValidationPersonalTabPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  bool isEdited = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = context.l10n;
    return GenderModelFormBuilder(
      model: widget.form.genderInfoControl?.value,
      builder: (context, formModel, child) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditableReactiveTextField(
                label: l10n.lugarInscripcion,
                modifiedData: widget.provider.getByKey('lugarInscripcionGenero'),
                showButton: widget.operation.isCreate,
                formControl: formModel.inscriptionPlaceControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'lugarInscripcionGenero',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.inscriptionPlaceControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                  widget.provider.removeRequest(key: 'lugarInscripcionGenero');
                  formModel.inscriptionPlaceControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.fechaInscripcion,
                modifiedData: widget.provider.getByKey('fechaInscripcionGenero'),
                showButton: widget.operation.isCreate,
                formControl: formModel.inscriptionDateControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'fechaInscripcionGenero',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.inscriptionDateControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                  widget.provider.removeRequest(key: 'fechaInscripcionGenero');
                  formModel.inscriptionDateControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.genero,
                modifiedData: widget.provider.getByKey('genero'),
                showButton: widget.operation.isCreate,
                formControl: formModel.genderControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'genero',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.genderControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                  widget.provider.removeRequest(key: 'genero');
                  formModel.genderControl?.updateValue(prev);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
