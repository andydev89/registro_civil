import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
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
                    PrimaryAsyncButton(
                      title: l10n.pagar,
                      onPressed: formModel.form.valid
                          ? () async {
                              await ref
                                  .read(
                                    createaPaymentservicesProvider.notifier,
                                  )
                                  .createpaymentofservices(formModel.model)
                                  .when(
                                    ok: (value) {
                                      context.replaceRoute(
                                        MakePaymentRoute(
                                          transactionCode:
                                              value.transactionCode,
                                          requestNumber: value.transactionCode,
                                          buttonText: l10n.continuar,
                                          service: typeServiceModel,
                                          onTapSuccessPayment: (cxt) =>
                                              cxt.replaceRoute(
                                            const MyTurnsRoute(),
                                          ),
                                        ),
                                      );
                                    },
                                    err: (error) => showAlert(
                                      error.translate(context),
                                      TypeAlert.error,
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
                ),
              ).symmetricPadding(10, 30),
            ),
          ),
        );
      },
    );
  }
}
