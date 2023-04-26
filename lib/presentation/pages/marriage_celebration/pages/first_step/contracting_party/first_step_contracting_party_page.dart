import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/models/auth/register_model.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/first_step_form.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';

class FirstStepContractingPartyPage extends ConsumerWidget {
  const FirstStepContractingPartyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final me = ref.watch(meProvider).value ?? MeModel();
    return RequestOwnerFormBuilder(
      model: RequestOwner.fromMe(me),
      builder: (_, formModel, __) => Scaffold(
        backgroundColor: Colors.transparent,
        body: ScrollableContent(
          child: FirstStepForm(formModel: formModel, showFilePicker: false),
        ).symmetricPadding(10, 20),
        bottomNavigationBar: ReactiveRequestOwnerFormConsumer(
          builder: (_, formModel, __) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PrimaryButton(
                title: l10n.siguiente,
                onPressed: formModel.form.valid
                    ? () {
                        ref
                            .read(marriageCelebrationProvider.notifier)
                            .setFirstStep(formModel.model);
                        Navigator.of(context).pushNamed(
                          '/marriage-celebration/second-step',
                        );
                      }
                    : null,
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                title: l10n.cancelar,
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
