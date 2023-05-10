import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/input_decorator_widget.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/utils/residence_registration_utils.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_svg_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class FirstStepResidencePage extends ConsumerWidget {
  const FirstStepResidencePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    ref.watch(residentialPProvider);
    return FirstStepResidenceModelFormBuilder(
      builder: (context, formModel, snapshot) {
        return PrimaryScaffold(
          title: l10n.registroRes,
          subtitle: l10n.ingreseInfSol,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectElementFromApi(
                    formControl: formModel.provinceControl,
                    label: l10n.provincia,
                    provider: provincesProvider,
                    onChanged: (p0) => formModel.cantonControl.value = null,
                  ),
                  ReactiveFirstStepResidenceModelFormConsumer(
                    builder: (_, __, ___) => Column(
                      children: [
                        SelectElementFromApi(
                          readOnly: !formModel.provinceControl.valid,
                          formControl: formModel.cantonControl,
                          label: l10n.canton,
                          onChanged: (p0) =>
                              formModel.parroquiaControl.value = null,
                          provider: LocationByParentProvider(
                            parentId: formModel.provinceControl.value?.id ?? '',
                          ),
                        ),
                        SelectElementFromApi(
                          readOnly: !formModel.cantonControl.valid,
                          formControl: formModel.parroquiaControl,
                          label: l10n.parroquia,
                          provider: LocationByParentProvider(
                            parentId: formModel.cantonControl.value?.id ?? '',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  PrimaryText(l10n.callePrincipal),
                  InputDecorationWidget(
                    formControl: formModel.mainStreetControl,
                    suffixIcon: SecondarySvgIconButton(
                      svgIcon: Assets.svg.mapMarker.svg(),
                      onPressed: () => selectLocationResidenceREgistration(
                        context: context,
                        formControl: formModel.mainStreetControl,
                        ref: ref,
                      ),
                    ),
                    onTap: () => selectLocationResidenceREgistration(
                      context: context,
                      formControl: formModel.mainStreetControl,
                      ref: ref,
                    ),
                  ),
                  const SizedBox(height: 20),
                  PrimaryText(l10n.calleSecundaria),
                  InputDecorationWidget(
                    formControl: formModel.backStreetControl,
                    suffixIcon: SecondarySvgIconButton(
                      svgIcon: Assets.svg.mapMarker.svg(),
                      onPressed: () => selectLocationResidenceREgistration(
                        context: context,
                        formControl: formModel.backStreetControl,
                        ref: ref,
                      ),
                    ),
                    onTap: () => selectLocationResidenceREgistration(
                      context: context,
                      formControl: formModel.backStreetControl,
                      ref: ref,
                    ),
                  ),
                ],
              ).horizontalPadding(20),
            ),
          ),
          bottomNavigationBar: ReactiveFirstStepResidenceModelFormConsumer(
            builder: (context, formModel, child) => PrimaryButton(
              onPressed: formModel.form.valid
                  ? () {
                      ref
                          .read(residentialPProvider.notifier)
                          .updateFirstStep(formModel.model);
                      context.navigateTo(const SecondStepResidenceRoute());
                    }
                  : null,
              title: l10n.siguiente,
            ),
          ).symmetricPadding(10, 30),
        );
      },
    );
  }
}
