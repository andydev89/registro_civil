import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/commons/commons_providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/buttons_group/rigth_left_buttons.dart';
import 'package:registro_civil_apk/presentation/widgets/commons_fetchers/select_element_from_api.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class RequestInformationSecondStepPage extends StatelessWidget {
  const RequestInformationSecondStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResidenceRegistrationSecondStepModelFormBuilder(
      builder: (context, formModel, child) => SingleChildScrollView(
        child: Column(
          children: [
            SelectElementFromApi(
              provider: provincesProvider,
              formControl: formModel.provinceControl,
              label: l10n.provincia,
            ),
            SelectElementFromApi(
              provider: cantonProvider,
              formControl: formModel.cantonControl,
              label: l10n.canton,
            ),
            SelectElementFromApi(
              provider: parroquiaProvider,
              formControl: formModel.parroquiaControl,
              label: l10n.parroquia,
            ),
            PrimaryReactiveTextField(
              formControl: formModel.primaryStreetControl,
              label: l10n.callePrincipal,
            ),
            PrimaryReactiveTextField(
              formControl: formModel.secondaryStreetControl,
              label: l10n.calleSecundaria,
            ),
            RigthLeftButtons(
              rigthButtonTitle: l10n.siguiente,
              onRigth: () =>
                  context.navigateTo(const RequestInformationThirdStepRoute()),
              onLeft: () => context.navigateTo(const HomeRouterRoute()),
            ).verticalPadding(10),
          ],
        ),
      ),
    );
  }
}
