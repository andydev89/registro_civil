import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/utils/marriage_celebration_util.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/input_decorator_widget.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_svg_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class SecondStepOffSitePage extends ConsumerWidget {
  const SecondStepOffSitePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return OutsideFormBuilder(
      builder: (_, formModel, __) => Scaffold(
        backgroundColor: Colors.transparent,
        body: ScrollableContent(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryText(l10n.dondeReaMat),
                ],
              ),
              const SizedBox(height: 10),
              PrimaryText(l10n.latitud),
              InputDecorationWidget(
                formControl: formModel.latitudeControl,
                suffixIcon: SecondarySvgIconButton(
                  svgIcon: Assets.svg.mapMarker.svg(),
                  onPressed: () => selectLocation(
                    context: context,
                    formControl: formModel,
                    ref: ref,
                  ),
                ),
                onTap: () => selectLocation(
                  context: context,
                  formControl: formModel,
                  ref: ref,
                ),
              ),
              PrimaryText(l10n.longitud),
              InputDecorationWidget(
                formControl: formModel.longitudeControl,
                suffixIcon: SecondarySvgIconButton(
                  svgIcon: Assets.svg.mapMarker.svg(),
                  onPressed: () => selectLocation(
                    context: context,
                    formControl: formModel,
                    ref: ref,
                  ),
                ),
                onTap: () => selectLocation(
                  context: context,
                  formControl: formModel,
                  ref: ref,
                ),
              ),
              PrimaryText(l10n.callePrincipal),
              PrimaryReactiveTextField(
                formControl: formModel.principalStreetControl,
                textCapitalization: TextCapitalization.words,
              ),
              PrimaryText(l10n.calleSecundaria),
              PrimaryReactiveTextField(
                formControl: formModel.secondaryStreetControl,
                textCapitalization: TextCapitalization.words,
              ),
            ],
          ).symmetricPadding(10, 20),
        ),
        bottomNavigationBar: ReactiveOutsideFormConsumer(
          builder: (_, formModel, __) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              PrimaryButton(
                title: l10n.siguiente,
                onPressed: formModel.form.valid
                    ? () {
                        ref
                            .read(marriageCelebrationProvider.notifier)
                            .setOutsider(
                              formModel.model,
                            );
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
              ),
              const SizedBox(height: 10),
              PrimaryButton(
                title: l10n.cancelar,
                onPressed: () => context.navigateBack(),
              ),
            ],
          ).symmetricPadding(10, 30),
        ),
      ),
    );
  }
}
