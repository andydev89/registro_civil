import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
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
  const FirstStepResidencePage({
    super.key,
    this.operation = Crud.create,
    this.residenceIndex,
  });
  final Crud operation;
  final int? residenceIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final init = operation.isEditOrRead;
    var alreadyStarter = false;
    final model = ref.watch(residentialPProvider.notifier).getFirstStep();
    return FirstStepResidenceModelFormBuilder(
      model: operation.isEditOrRead ? model : null,
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
                    readOnly: operation.isRead,
                    formControl: formModel.provinceControl,
                    label: l10n.provincia,
                    init: init && !alreadyStarter,
                    initialValue: (data) => data?.firstWhere(
                      (element) => element.id == model.province.id,
                    ),
                    provider: provincesProvider,
                    onChanged: (p0) {
                      formModel.cantonControl.value = null;
                      alreadyStarter = true;
                    },
                  ),
                  ReactiveFirstStepResidenceModelFormConsumer(
                    builder: (_, __, ___) => Column(
                      children: [
                        SelectElementFromApi(
                          init: init && !alreadyStarter,
                          initialValue: (data) => data?.firstWhere(
                            (element) => element.id == model.canton.id,
                          ),
                          readOnly: !formModel.provinceControl.valid ||
                              operation.isRead,
                          formControl: formModel.cantonControl,
                          label: l10n.canton,
                          onChanged: (p0) {
                            formModel.parroquiaControl.value = null;
                            alreadyStarter = true;
                          },
                          provider: LocationByParentProvider(
                            parentId: formModel.provinceControl.value?.id ?? '',
                          ),
                        ),
                        SelectElementFromApi(
                          init: init && !alreadyStarter,
                          initialValue: (data) => data?.firstWhere(
                            (element) => element.id == model.parroquia.id,
                          ),
                          readOnly: !formModel.cantonControl.valid ||
                              operation.isRead,
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
                    readOnly: operation.isRead,
                    formControl: formModel.mainStreetControl,
                    suffixIcon: SecondarySvgIconButton(
                      svgIcon: Assets.svg.mapMarker.svg(),
                      onPressed: operation.isRead
                          ? null
                          : () => selectLocationResidenceREgistration(
                                context: context,
                                formControl: formModel.mainStreetControl,
                                ref: ref,
                              ),
                    ),
                    onTap: operation.isRead
                        ? null
                        : () => selectLocationResidenceREgistration(
                              context: context,
                              formControl: formModel.mainStreetControl,
                              ref: ref,
                            ),
                  ),
                  const SizedBox(height: 20),
                  PrimaryText(l10n.calleSecundaria),
                  InputDecorationWidget(
                    readOnly: operation.isRead,
                    formControl: formModel.backStreetControl,
                    suffixIcon: SecondarySvgIconButton(
                      svgIcon: Assets.svg.mapMarker.svg(),
                      onPressed: operation.isRead
                          ? null
                          : () => selectLocationResidenceREgistration(
                                context: context,
                                formControl: formModel.backStreetControl,
                                ref: ref,
                              ),
                    ),
                    onTap: operation.isRead
                        ? null
                        : () => selectLocationResidenceREgistration(
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
                      context.navigateTo(
                        SecondStepResidenceRoute(
                          operation: operation,
                          residenceIndex: residenceIndex,
                        ),
                      );
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
