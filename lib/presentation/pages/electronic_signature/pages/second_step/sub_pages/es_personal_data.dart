import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/commons_fetchers.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';

class ElectronicSignaturePersonalPage extends ConsumerStatefulWidget {
  ElectronicSignaturePersonalPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
  });

  final Crud operation;
  ESignaturePersonalBillingModelForm form;

  @override
  ConsumerState<ElectronicSignaturePersonalPage> createState() =>
      _ElectronicSignaturePersonalPageState();
}

class _ElectronicSignaturePersonalPageState
    extends ConsumerState<ElectronicSignaturePersonalPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = context.l10n;
    final init = widget.operation.isRead;
    final provider = ref.watch(electronicSignatureProvider);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryReactiveTextField(
            readOnly: true,
            label: l10n.nombreApe,
            formControl: widget.form.fullNameControl,
            textCapitalization: TextCapitalization.words,
          ),
          PrimaryReactiveEmailField(
            readOnly: true,
            label: l10n.correoE,
            formControl: widget.form.emailControl,
          ),
          PrimaryReactivePhoneField(
            readOnly: true,
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
            init: init,
            initialValue: (data) {
              final r = data?.firstWhere(
                (element) => element.id == provider.provinceId?.id,
              );
              return r;
            },
            provider: provincesProvider,
            onChanged: (p0) {
              widget.form.cityControl?.value = null;
            },
          ),
          ReactiveESignaturePersonalBillingModelFormConsumer(
            builder: (_, __, ___) {
              return Column(
                children: [
                  SelectElementFromApi(
                    init: init,
                    initialValue: (data) {
                      final r = data?.firstWhere(
                            (element) => element.id == provider.cantonId?.id,
                      );
                      return r;
                    },
                    readOnly: !widget.form.provinceControl!.valid ||
                        widget.operation.isRead,
                    formControl: widget.form.cityControl,
                    label: l10n.canton,
                    onChanged: (p0) {
                      widget.form.parishControl?.value = null;
                    },
                    provider: LocationByParentProvider(
                      parentId: widget.form.provinceControl?.value?.id ?? '',
                    ),
                  ),
                  SelectElementFromApi(
                    init: init,
                    initialValue: (data) => data?.firstWhere(
                      (element) => element.id == provider.parroquiaId?.id,
                    ),
                    readOnly: !widget.form.cityControl!.valid ||
                        widget.operation.isRead,
                    formControl: widget.form.parishControl,
                    label: l10n.parroquia,
                    provider: LocationByParentProvider(
                      parentId: widget.form.cityControl?.value?.id ?? '',
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
