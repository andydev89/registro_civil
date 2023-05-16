import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class SimpleCertificateFirstStepPersonalPage extends ConsumerWidget {
  const SimpleCertificateFirstStepPersonalPage({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeServiceModel typeSimpleCertificate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return NuiModelFormBuilder(
      builder: (context, formModel, child) => Scaffold(
        backgroundColor: Colors.transparent,
        body: ScrollableContent(
          child: Column(
            children: [
              PrimaryReactiveNuiField(
                label: l10n.numCedula,
                formControl: formModel.nuiControl,
                hintText: '0123456789',
                init: true,
              ),
            ],
          ).horizontalPadding(20),
        ),
        bottomNavigationBar: ReactiveNuiModelFormConsumer(
          builder: (context, formModel, child) => PrimaryAsyncButton(
            title: l10n.aceptar,
            onPressed: formModel.form.valid
                ? () => ref
                    .read(simpleCertificateProvider.notifier)
                    .simpleCertificatePersonal(
                      model: formModel.model,
                      type: typeSimpleCertificate.type,
                    )
                    .when(
                      ok: (response) => context.navigateTo(
                        SimpleCertificateSecondStepRoute(
                          simpleCertificateResponse: response,
                          model: typeSimpleCertificate,
                        ),
                      ),
                      err: (error) =>
                          showAlert(error.translate(context), TypeAlert.error),
                    )
                : null,
          ).symmetricPadding(10, 10),
        ),
      ),
    );
  }
}
