import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class MarriageCelebrationAgencyPage extends ConsumerWidget {
  const MarriageCelebrationAgencyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return SelectAgencyFormBuilder(
      builder: (_, formModel, __) => PrimaryScaffold(
        title: l10n.solicitudCelMat,
        subtitle: l10n.ingreseInfSol,
        body: Expanded(
          child: ScrollableContent(
            child: Column(
              children: [
                SelectElementFromApi(
                  formControl: formModel.provinceControl,
                  label: l10n.provincia,
                  provider: provincesProvider,
                  onChanged: (p0) => formModel.cantonControl.value = null,
                ),
                ReactiveSelectAgencyFormConsumer(
                  builder: (_, __, ___) => Column(
                    children: [
                      SelectElementFromApi(
                        readOnly: !formModel.provinceControl.valid,
                        formControl: formModel.cantonControl,
                        label: l10n.canton,
                        onChanged: (p0) => formModel.agencyControl.value = null,
                        provider: LocationByParentProvider(
                          parentId: formModel.provinceControl.value?.id ?? '',
                        ),
                      ),
                      SelectElementFromApi(
                        readOnly: !formModel.cantonControl.valid,
                        formControl: formModel.agencyControl,
                        label: l10n.agencia,
                        provider: agenciesProvider,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ).symmetricPadding(10, 20),
        ),
        bottomNavigationBar: ReactiveSelectAgencyFormConsumer(
          builder: (_, formModel, __) {
            return PrimaryButton(
              title: l10n.siguiente,
              onPressed: formModel.form.valid
                  ? () {
                      ref
                          .read(marriageCelebrationProvider.notifier)
                          .setAgency(formModel.agencyControl.value);
                      context.navigateTo(
                        MarriageCelebrationSecondStepRouterRoute(
                          children: [
                            SecondStepAtHeadquarterRoute(
                              children: [WitnessRoute(indexWitness: 0)],
                            ),
                          ],
                        ),
                      );
                    }
                  : null,
            );
          },
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
