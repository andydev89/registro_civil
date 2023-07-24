import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/personal_validation/personal_validation_model.dart';
import 'package:registro_civil_apk/data/providers/personal_data_validation/personal_validation_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';

class BirthValidationPersonalTabPage extends StatefulWidget {
  BirthValidationPersonalTabPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
    required this.provider,
  });

  final Crud operation;
  PersonalValidationModelForm form;
  PersonalValidationRequests provider;

  @override
  State<StatefulWidget> createState() => _BirthValidationPersonalTabPage();
}

class _BirthValidationPersonalTabPage
    extends State<BirthValidationPersonalTabPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  bool isEdited = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = context.l10n;
    return BirthModelFormBuilder(
      model: widget.form.birthControl?.value,
      builder: (context, formModel, child) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditableReactiveTextField(
                label: l10n.lugarNacimiento,
                modifiedData: widget.provider.getByKey('lugarNacimiento'),
                showButton: widget.operation.isCreate,
                formControl: formModel.birthPlaceControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'lugarNacimiento',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.birthPlaceControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                      widget.provider.removeRequest(key: 'lugarNacimiento');
                  formModel.birthPlaceControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.fechaNac,
                modifiedData: widget.provider.getByKey('fechaNacimiento'),
                showButton: widget.operation.isCreate,
                formControl: widget.form.birthDateControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'fechaNacimiento',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: widget.form.birthDateControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                      widget.provider.removeRequest(key: 'fechaNacimiento');
                  widget.form.birthDateControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.lugarInscNac,
                modifiedData: widget.provider.getByKey('lugarInscripcion'),
                showButton: widget.operation.isCreate,
                formControl: formModel.inscriptionPlaceControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'lugarInscripcion',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.inscriptionPlaceControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                      widget.provider.removeRequest(key: 'lugarInscripcion');
                  formModel.inscriptionPlaceControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.annoInscripcion,
                modifiedData: widget.provider.getByKey('anioInscripcionNacimiento'),
                showButton: widget.operation.isCreate,
                formControl: formModel.inscriptionYearControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'anioInscripcionNacimiento',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.inscriptionYearControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'anioInscripcionNacimiento');
                  formModel.inscriptionYearControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.fechaInscripcion,
                modifiedData: widget.provider.getByKey('fechaInscripcionNacimiento'),
                showButton: widget.operation.isCreate,
                formControl: formModel.inscriptionDateControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'fechaInscripcionNacimiento',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.inscriptionDateControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'fechaInscripcionNacimiento');
                  formModel.inscriptionDateControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.tomo,
                modifiedData: widget.provider.getByKey('tomo'),
                showButton: widget.operation.isCreate,
                formControl: formModel.volumeControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'tomo',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.volumeControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'tomo');
                  formModel.volumeControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.pagina,
                modifiedData: widget.provider.getByKey('pagina'),
                showButton: widget.operation.isCreate,
                formControl: formModel.pageControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'pagina',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.pageControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'pagina');
                  formModel.pageControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.acta,
                modifiedData: widget.provider.getByKey('acta'),
                showButton: widget.operation.isCreate,
                formControl: formModel.recordControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'acta',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.recordControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'acta');
                  formModel.recordControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.clase,
                modifiedData: widget.provider.getByKey('clase'),
                showButton: widget.operation.isCreate,
                formControl: formModel.birthClassControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'clase',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.birthClassControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'clase');
                  formModel.birthClassControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: l10n.nacionalidad,
                modifiedData: widget.provider.getByKey('nacionalidad'),
                showButton: widget.operation.isCreate,
                formControl: widget.form.nationalityControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'nacionalidad',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: widget.form.nationalityControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                      widget.provider.removeRequest(key: 'nacionalidad');
                  widget.form.nationalityControl?.updateValue(prev);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
