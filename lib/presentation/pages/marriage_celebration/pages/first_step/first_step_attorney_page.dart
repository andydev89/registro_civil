import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/utils/marriage_celebration_util.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/first_step_form.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';

class FirstStepAttorneyPage extends ConsumerWidget {
  const FirstStepAttorneyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final provider = ref.watch(marriageCelebrationProvider);
    return RequestOwnerFormBuilder(
      model: provider.requestOwner,
      initState: (context, formModel) {
        setErrorFile(formModel.identityCardControl);
        setErrorFile(formModel.powerOfAttorneyControl);
      },
      builder: (_, formModel, __) {
        formModel.identityCardControl?.valueChanges.listen((event) {
          if (event == null || event.isEmpty) {
            setErrorFile(formModel.identityCardControl);
          }
          return removeErrorFile(formModel.identityCardControl);
        });
        formModel.powerOfAttorneyControl?.valueChanges.listen((event) {
          if (event == null || event.isEmpty) {
            setErrorFile(formModel.powerOfAttorneyControl);
          }
          return removeErrorFile(formModel.powerOfAttorneyControl);
        });
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: ScrollableContent(
            child: FirstStepForm(formModel: formModel),
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
                          context.navigateTo(
                            const MarriageCelebrationAgencyRoute(),
                          );
                        }
                      : null,
                ),
                const SizedBox(height: 10),
                PrimaryButton(
                  title: l10n.cancelar,
                  onPressed: () => context.navigateBack(),
                ),
              ],
            ),
          ).symmetricPadding(10, 30),
        );
      },
    );
  }
}
