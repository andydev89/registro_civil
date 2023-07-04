import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/commons_fetchers.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';

class ElectronicSignaturePersonalPage extends StatefulWidget {
  ElectronicSignaturePersonalPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
  });

  final Crud operation;
  ESignaturePersonalBillingModelForm form;

  @override
  State<StatefulWidget> createState() => _ElectronicSignaturePersonalPage();
}

class _ElectronicSignaturePersonalPage
    extends State<ElectronicSignaturePersonalPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = context.l10n;
    final init = widget.operation.isRead;
    var alreadyStarter = false;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryReactiveTextField(
            readOnly: widget.operation.isRead,
            label: l10n.nombreApe,
            formControl: widget.form.fullNameControl,
            textCapitalization: TextCapitalization.words,
          ),
          PrimaryReactiveEmailField(
            readOnly: widget.operation.isRead,
            label: l10n.correoE,
            formControl: widget.form.emailControl,
          ),
          PrimaryReactivePhoneField(
            readOnly: widget.operation.isRead,
            label: l10n.telefono,
            formControl: widget.form.phoneControl,
          ),
          PrimaryReactiveTextField(
            readOnly: widget.operation.isRead,
            label: l10n.direccion,
            formControl: widget.form.addressControl,
          ),
          PrimaryReactivePostalCodeField(
            readOnly: widget.operation.isRead,
            label: l10n.codigoPostal,
            formControl: widget.form.postalCodeControl,
          ),
          SelectElementFromApi(
            readOnly: widget.operation.isRead,
            formControl: widget.form.provinceControl,
            label: l10n.provincia,
            init: init && !alreadyStarter,
            /*initialValue: (data) => data?.firstWhere(
                        (element) => element.id == model.province.id,
                  ),*/
            provider: provincesProvider,
            onChanged: (p0) {
              widget.form.cityControl.value = null;
              alreadyStarter = true;
            },
          ),
          ReactiveESignaturePersonalBillingModelFormConsumer(
            builder: (_, __, ___) {
              return Column(
                children: [
                  SelectElementFromApi(
                    init: init && !alreadyStarter,
                    /*initialValue: (data) => data?.firstWhere(
                                (element) => element.id == model.canton.id,
                          ),*/
                    readOnly: !widget.form.provinceControl.valid ||
                        widget.operation.isRead,
                    formControl: widget.form.cityControl,
                    label: l10n.canton,
                    onChanged: (p0) {
                      widget.form.parishControl.value = null;
                      alreadyStarter = true;
                    },
                    provider: LocationByParentProvider(
                      parentId: widget.form.provinceControl.value?.id ?? '',
                    ),
                  ),
                  SelectElementFromApi(
                    init: init && !alreadyStarter,
                    /*initialValue: (data) => data?.firstWhere(
                                (element) => element.id == model.parroquia.id,
                          ),*/
                    readOnly: !widget.form.cityControl.valid ||
                        widget.operation.isRead,
                    onChanged: (p0) => alreadyStarter = true,
                    formControl: widget.form.parishControl,
                    label: l10n.parroquia,
                    provider: LocationByParentProvider(
                      parentId: widget.form.cityControl.value?.id ?? '',
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
