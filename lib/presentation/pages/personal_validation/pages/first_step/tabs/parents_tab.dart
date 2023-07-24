import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/models/personal_validation/personal_validation_model.dart';
import 'package:registro_civil_apk/data/providers/personal_data_validation/personal_validation_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ParentsValidationPersonalTabPage extends StatefulWidget {
  ParentsValidationPersonalTabPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
    required this.provider,
  });

  final Crud operation;
  PersonalValidationModelForm form;
  PersonalValidationRequests provider;

  @override
  State<StatefulWidget> createState() => _ParentsValidationPersonalTabPage();
}

class _ParentsValidationPersonalTabPage
    extends State<ParentsValidationPersonalTabPage>
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
          PrimaryTitle(
            title: l10n.padre,
          ),
          EditableReactiveTextField(
            label: l10n.nui,
            modifiedData: widget.provider.getByKey('nuiPadre'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.fatherNuiControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'nuiPadre',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.fatherNuiControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'nuiPadre');
              widget.form.fatherNuiControl?.updateValue(prev);
            },
          ),
          EditableReactiveTextField(
            label: l10n.nombrePadre,
            modifiedData: widget.provider.getByKey('nombrePadre'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.fatherNameControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'nombrePadre',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.fatherNameControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'nombrePadre');
              widget.form.fatherNameControl?.updateValue(prev);
            },
          ),
          EditableReactiveTextField(
            label: l10n.nacionalidad,
            modifiedData: widget.provider.getByKey('nacionalidadPadre'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.fatherNationalityControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'nacionalidadPadre',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.fatherNationalityControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev =
                  widget.provider.removeRequest(key: 'nacionalidadPadre');
              widget.form.fatherNationalityControl?.updateValue(prev);
            },
          ),
          const SizedBox(height: 12,),
          PrimaryTitle(
            title: l10n.madre,
          ),
          EditableReactiveTextField(
            label: 'NUI',
            modifiedData: widget.provider.getByKey('nuiMadre'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.motherNuiControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'nuiMadre',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.motherNuiControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'nuiMadre');
              widget.form.motherNuiControl?.updateValue(prev);
            },
          ),
          EditableReactiveTextField(
            label: l10n.nombreMadre,
            modifiedData: widget.provider.getByKey('nombreMadre'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.motherNameControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'nombreMadre',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.motherNameControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev = widget.provider.removeRequest(key: 'nombreMadre');
              widget.form.motherNameControl?.updateValue(prev);
            },
          ),
          EditableReactiveTextField(
            label: l10n.nacionalidad,
            modifiedData: widget.provider.getByKey('nacionalidadMadre'),
            showButton: widget.operation.isCreate,
            formControl: widget.form.motherNationalityControl,
            textCapitalization: TextCapitalization.words,
            onSavePressed: (prev) {
              widget.provider.addRequest(
                key: 'nacionalidadMadre',
                model: ModifiedDataModel(
                  original: prev,
                  modified: widget.form.motherNationalityControl?.value ?? '',
                ),
              );
            },
            onCancelPressed: () {
              final prev =
              widget.provider.removeRequest(key: 'nacionalidadMadre');
              widget.form.motherNationalityControl?.updateValue(prev);
            },
          ),
        ],
      ),
    );
  }
}
