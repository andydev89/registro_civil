import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';

class ElectronicSignatureBillingPage extends ConsumerWidget {
  const ElectronicSignatureBillingPage({
    super.key,
    this.operation = Crud.create,
  });
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return ESignatureBillingModelFormBuilder(
      builder: (context, form, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryReactiveCheckBox(
              formControl: form.hasRUCIncludedControl,
              label: l10n.firmaIncRuc,
            ),
            PrimaryReactiveTextField(
              readOnly: operation.isRead,
              label: l10n.firmaRuc,
              formControl: form.rucControl,
            ),
            PrimaryReactiveDropdown(
              label: l10n.usoFactElectronica,
              formControl: form.useCaseControl,
              items: SignatureUseCaseType.values,
              readOnly: operation.isRead,
            ),
            PrimaryReactiveDropdown(
              label: l10n.firmaVigencia,
              formControl: form.validityTimeControl,
              items: SignatureValidityTimeType.values,
              readOnly: operation.isRead,
            ),
          ],
        ).horizontalPadding(20),
        bottomNavigationBar: ReactiveESignatureBillingModelFormConsumer(
          builder: (_, form, __) {
            return PrimaryButton(
              title: l10n.siguiente,
              onPressed: operation.isRead
                  ? () {}
                  : null,
            );
          },
        ).symmetricPadding(10, 10),
      ),
    );
  }
}
