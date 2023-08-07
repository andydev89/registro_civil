import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class PaymentServiceIngActsNotFirstPage extends ConsumerWidget {
  const PaymentServiceIngActsNotFirstPage({
    super.key,
    required this.typeServiceModel,
  });

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;

    return PaymentServiceJudgmentsNotarialActsModelFormBuilder(
      builder: (_, formModel, __) {
        return PrimaryScaffold(
          title: typeServiceModel.name,
          subtitle: l10n.completeInformacionSolicitada,
          body: Expanded(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    // ignore: lines_longer_than_80_chars
                    SelectElementFromApi(
                      formControl: formModel.serviceControl,
                      label: l10n.servicios,
                      provider: getservicesProvider,
                    ).horizontalPadding(20),
                    SelectElementFromApi(
                      formControl: formModel.provinceControl,
                      label: l10n.provincia,
                      provider: provincesProvider,
                    ).horizontalPadding(20),

                    ReactivePaymentServiceJudgmentsNotarialActsModelFormConsumer(
                      builder: (context, formModel, child) {
                        return Column(
                          children: [
                            SelectElementFromApi(
                              readOnly: !formModel.provinceControl.valid,
                              formControl: formModel.agencyControl,
                              label: l10n.agencia,
                              provider: agenciesByProvinceProvider(
                                provinceId:
                                    formModel.provinceControl.value?.id ?? '',
                              ),
                            ).horizontalPadding(20),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ).verticalPadding(20),
              // ignore: lines_longer_than_80_chars
              bottomNavigationBar:
                  ReactivePaymentServiceJudgmentsNotarialActsModelFormConsumer(
                builder: (context, formModel, child) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PrimaryButton(
                      title: l10n.pagar,
                      onPressed: formModel.form.valid ? () {} : null,
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      title: l10n.cancelar,
                      onPressed: () => context.navigateBack(),
                    ),
                  ],
                ),
              ).symmetricPadding(10, 30),
            ),
          ),
        );
      },
    );
  }
}
