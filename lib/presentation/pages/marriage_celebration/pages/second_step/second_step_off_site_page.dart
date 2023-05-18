import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
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
  const SecondStepOffSitePage({
    super.key,
    this.operation = Crud.create,
  });
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final marriage = ref.watch(marriageCelebrationProvider);
    return OutsideFormBuilder(
      model: marriage.outside,
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
                readOnly: operation.isRead,
                formControl: formModel.latitudeControl,
                suffixIcon: SecondarySvgIconButton(
                  svgIcon: Assets.svg.mapMarker.svg(),
                  onPressed: () => selectLocation(
                    context: context,
                    formControl: formModel,
                    ref: ref,
                  ),
                ),
                onTap: operation.isRead
                    ? null
                    : () => selectLocation(
                          context: context,
                          formControl: formModel,
                          ref: ref,
                        ),
              ),
              PrimaryText(l10n.longitud),
              InputDecorationWidget(
                readOnly: operation.isRead,
                formControl: formModel.longitudeControl,
                suffixIcon: SecondarySvgIconButton(
                  svgIcon: Assets.svg.mapMarker.svg(),
                  onPressed: () => selectLocation(
                    context: context,
                    formControl: formModel,
                    ref: ref,
                  ),
                ),
                onTap: operation.isRead
                    ? null
                    : () => selectLocation(
                          context: context,
                          formControl: formModel,
                          ref: ref,
                        ),
              ),
              PrimaryText(l10n.callePrincipal),
              PrimaryReactiveTextField(
                readOnly: operation.isRead,
                formControl: formModel.principalStreetControl,
                textCapitalization: TextCapitalization.words,
              ),
              PrimaryText(l10n.calleSecundaria),
              PrimaryReactiveTextField(
                readOnly: operation.isRead,
                formControl: formModel.secondaryStreetControl,
                textCapitalization: TextCapitalization.words,
              ),
            ],
          ).symmetricPadding(10, 20),
        ),
        bottomNavigationBar: ReactiveOutsideFormConsumer(
          builder: (_, formModel, __) => PrimaryButton(
            title: l10n.siguiente,
            onPressed: formModel.form.valid
                ? () {
                    if (operation.isCreate) {
                      ref
                          .read(marriageCelebrationProvider.notifier)
                          .setOutsider(
                            formModel.model,
                          );
                    } else {
                      ref
                        ..read(witnesssProvider(0).notifier)
                            .init(marriage.firstWitness!)
                        ..read(witnesssProvider(1).notifier)
                            .init(marriage.secondWitness!);
                    }
                    context.navigateTo(
                      MarriageCelebrationSecondStepRouterRoute(
                        children: [
                          SecondStepAtHeadquarterRoute(
                            operation: operation,
                            children: [
                              WitnessRoute(
                                indexWitness: 0,
                                operation: operation,
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                : null,
          ).symmetricPadding(10, 10),
        ),
      ),
    );
  }
}
