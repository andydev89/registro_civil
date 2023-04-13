import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/buttons_group/three_buttons_column.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class RequestInformationThirdStepPage extends StatelessWidget {
  const RequestInformationThirdStepPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ResidenceRegistrationThirdStepModelFormBuilder(
      builder: (context, formModel, child) => SingleChildScrollView(
        child: Column(
          children: [
            PrimaryReactiveTextField(
              formControl: formModel.houseTypeControl,
              label: l10n.tipoDeVivienda,
            ),
            PrimaryReactiveTextField(
              formControl: formModel.tenureControl,
              label: l10n.tenencia,
            ),
            PrimaryReactiveTextField(
              formControl: formModel.villageOrBuildingNumberControl,
              label: l10n.numeroDeVillaOEdificio,
            ),
            PrimaryReactiveTextField(
              formControl: formModel.floorNumberControl,
              label: l10n.numeroDePiso,
            ),
            PrimaryReactiveTextField(
              formControl: formModel.appartmentNumberControl,
              label: l10n.numeroDeDepartamento,
            ),
            PrimaryReactiveTextField(
              formControl: formModel.residenceTypeControl,
              label: l10n.tipoDeResidencia,
            ),
            ThreeButtonsColumn(
              firstButtonText: l10n.annadirResidencia,
              onFirsButtonTap: () =>
                  context.navigateTo(const RequestInformationFirstStepRoute()),
              secondButtonText: l10n.verCertificado,
              onCancelButtonTap: () =>
                  context.navigateTo(const HomeRouterRoute()),
            ).verticalPadding(10),
          ],
        ),
      ),
    );
  }
}
