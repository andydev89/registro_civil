import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/personal_validation/personal_validation_model.dart';
import 'package:registro_civil_apk/data/providers/personal_data_validation/personal_validation_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class MarriageValidationPersonalTabPage extends StatefulWidget {
  MarriageValidationPersonalTabPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
    required this.provider,
  });

  final Crud operation;
  PersonalValidationModelForm form;
  PersonalValidationRequests provider;

  @override
  State<StatefulWidget> createState() => _MarriageValidationPersonalTabPage();
}

class _MarriageValidationPersonalTabPage
    extends State<MarriageValidationPersonalTabPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  bool isEdited = false;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = context.l10n;
    return MarriageModelFormBuilder(
      model: widget.form.marriageControl?.value,
      builder: (context, formModel, child) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EditableReactiveTextField(
                label: 'Lugar de ceremonia de matrimonio',
                isEdited: widget.provider.containsKey('lugarMatrimonio'),
                formControl: formModel.marriagePlaceControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'lugarMatrimonio',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.marriagePlaceControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                  widget.provider.removeRequest(key: 'lugarMatrimonio');
                  formModel.marriagePlaceControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: 'Fecha de ceremonia',
                isEdited: widget.provider.containsKey('fechaMatrimonio'),
                formControl: formModel.marriageDateControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'fechaMatrimonio',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.marriageDateControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                  widget.provider.removeRequest(key: 'fechaMatrimonio');
                  formModel.marriageDateControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: 'Tomo',
                isEdited: widget.provider.containsKey('tomoMatrimonio'),
                formControl: formModel.marriageVolumeControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'tomoMatrimonio',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.marriageVolumeControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev =
                  widget.provider.removeRequest(key: 'tomoMatrimonio');
                  formModel.marriageVolumeControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: 'Página',
                isEdited:
                widget.provider.containsKey('paginaMatrimonio'),
                formControl: formModel.marriagePageControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'paginaMatrimonio',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.marriagePageControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'paginaMatrimonio');
                  formModel.marriagePageControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: 'Acta',
                isEdited:
                widget.provider.containsKey('actaMatrimonio'),
                formControl: formModel.marriageRecordControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'actaMatrimonio',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.marriageRecordControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'actaMatrimonio');
                  formModel.marriageRecordControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: 'Clase',
                isEdited:
                widget.provider.containsKey('claseMatrimonio'),
                formControl: formModel.marriageClassControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'claseMatrimonio',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.marriageClassControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'claseMatrimonio');
                  formModel.marriageClassControl?.updateValue(prev);
                },
              ),
              const SizedBox(height: 12,),
              const PrimaryTitle(
                title: 'Datos del cónyuge',
              ),
              EditableReactiveTextField(
                label: 'NUI',
                isEdited:
                widget.provider.containsKey('nuiConyuge'),
                formControl: formModel.spouseNuiControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'nuiConyuge',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.spouseNuiControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'nuiConyuge');
                  formModel.spouseNuiControl?.updateValue(prev);
                },
              ),
              EditableReactiveTextField(
                label: 'Nombres cónyuge',
                isEdited:
                widget.provider.containsKey('conyuge'),
                formControl: formModel.spouseNameControl,
                onSavePressed: (prev) {
                  widget.provider.addRequest(
                    key: 'conyuge',
                    model: ModifiedDataModel(
                      original: prev,
                      modified: formModel.spouseNameControl?.value ?? '',
                    ),
                  );
                },
                onCancelPressed: () {
                  final prev = widget.provider
                      .removeRequest(key: 'conyuge');
                  formModel.spouseNameControl?.updateValue(prev);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
