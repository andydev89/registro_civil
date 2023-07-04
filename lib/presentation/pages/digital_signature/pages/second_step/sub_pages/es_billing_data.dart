import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';

class ElectronicSignatureBillingPage extends StatefulWidget {
  ElectronicSignatureBillingPage({
    super.key,
    this.operation = Crud.create,
    required this.form,
  });

  final Crud operation;
  ESignaturePersonalBillingModelForm form;

  @override
  State<StatefulWidget> createState() => _ElectronicSignatureBillingPage();
}

class _ElectronicSignatureBillingPage
    extends State<ElectronicSignatureBillingPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final l10n = context.l10n;
    final hasRucIncluded = ValueNotifier(
      widget.form.hasRUCIncludedControl?.value ?? false,
    );
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PrimaryReactiveCheckBox(
            formControl: widget.form.hasRUCIncludedControl,
            label: l10n.firmaIncRuc,
            onChanged: (value) => hasRucIncluded.value = value.value ?? false,
          ),
          ValueListenableBuilder<bool>(
            valueListenable: hasRucIncluded,
            builder: (_, value, __) {
              return Visibility(
                visible: value,
                child: PrimaryReactiveTextField(
                  readOnly: widget.operation.isRead,
                  label: l10n.firmaRuc,
                  formControl: widget.form.rucControl,
                ),
              );
            },
          ),
          PrimaryReactiveDropdown(
            label: l10n.usoFactElectronica,
            formControl: widget.form.useCaseControl,
            items: SignatureUseCaseType.values,
            readOnly: widget.operation.isRead,
          ),
          PrimaryReactiveDropdown(
            label: l10n.firmaVigencia,
            formControl: widget.form.validityTimeControl,
            items: SignatureValidityTimeType.values,
            readOnly: widget.operation.isRead,
          ),
        ],
      ),
    );
  }
}
