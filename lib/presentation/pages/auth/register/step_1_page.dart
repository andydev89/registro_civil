import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_form_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Step1Page extends ConsumerWidget {
  const Step1Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return ScrollableContent(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          PrimaryLabel(l10n.ingNumCedula),
          PrimaryTextFormField(
            label: l10n.numCedula,
            prefixIcon: Icons.payment,
            textInputType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
          PrimaryButton(
            title: l10n.validar,
            onPressed: () {
              ref.read(stepperIndexProvider.notifier).index++;
              context.navigateTo(const Step2Route());
            },
            width: double.maxFinite,
          ),
        ],
      ),
    );
  }
}
