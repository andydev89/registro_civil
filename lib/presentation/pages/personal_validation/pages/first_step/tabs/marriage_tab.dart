import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
                label: l10n.lugarCeremMat,
                modifiedData: widget.provider.getByKey('lugarMatrimonio'),
                showButton: widget.operation.isCreate,
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
              EditableReactiveDatePicker(
                label: l10n.fechaCeremonia,
                modifiedData: widget.provider.getByKey('fechaMatrimonio'),
                showButton: widget.operation.isCreate,
                formControl: formModel.marriageDateControl,
                lastDate: DateTime.now(),
                onSavePressed: (prev) {
                  if (prev != formModel.marriageDateControl!.value) {
                    final prevValue = prev == null
                        ? ''
                        : DateFormat('dd/MM/yyyy').format(prev);
                    final value = formModel.marriageDateControl!.value ==
                        null
                        ? ''
                        : DateFormat('dd/MM/yyyy')
                        .format(formModel.marriageDateControl!.value!);
                    widget.provider.addRequest(
                      key: 'fechaMatrimonio',
                      model: ModifiedDataModel(
                        original: prevValue,
                        modified: value,
                      ),
                    );
                  }
                },
                onCancelPressed: () {
                  final prev =
                  widget.provider.removeRequest(key: 'fechaMatrimonio');
                  final value = DateFormat('dd/MM/yyyy').parse(prev);
                  formModel.marriageDateControl?.updateValue(value);
                },
              ),
              EditableReactiveTextField(
                label: l10n.tomo,
                modifiedData: widget.provider.getByKey('tomoMatrimonio'),
                showButton: widget.operation.isCreate,
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
                label: l10n.pagina,
                modifiedData: widget.provider.getByKey('paginaMatrimonio'),
                showButton: widget.operation.isCreate,
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
                label: l10n.acta,
                modifiedData: widget.provider.getByKey('actaMatrimonio'),
                showButton: widget.operation.isCreate,
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
                label: l10n.clase,
                modifiedData: widget.provider.getByKey('claseMatrimonio'),
                showButton: widget.operation.isCreate,
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
              PrimaryTitle(
                title: l10n.datosConyuge,
              ),
              EditableReactiveTextField(
                label: l10n.nui,
                modifiedData: widget.provider.getByKey('nuiConyuge'),
                showButton: widget.operation.isCreate,
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
                label: l10n.nombresConyuge,
                modifiedData: widget.provider.getByKey('conyuge'),
                showButton: widget.operation.isCreate,
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
