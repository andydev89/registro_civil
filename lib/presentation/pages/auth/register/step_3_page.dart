import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class Step3Page extends ConsumerWidget {
  const Step3Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return WillPopScope(
      onWillPop: () {
        ref.read(stepperIndexProvider.notifier).index--;
        return Future(() => true);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: PrimaryLabel(
              l10n.resSigPreguntas,
            ),
          ),
          PrimaryLabel(
            l10n.cuaSegNomPrimo,
            textAlign: TextAlign.start,
          ),
          TextFormFieldAuth(
            label: l10n.responda,
          ),
          PrimaryLabel(
            l10n.ciuConPadres,
            textAlign: TextAlign.start,
          ),
          TextFormFieldAuth(
            label: l10n.responda,
          ),
          ElevatedButtonWidget(
            title: l10n.siguiente,
            width: double.maxFinite,
            onPressed: () {
              ref.read(stepperIndexProvider.notifier).index++;
              context.navigateTo(const Step4Route());
            },
          ),
        ],
      ),
    );
  }
}
