import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class BirthAbroadThirdStepPage extends ConsumerWidget {
  const BirthAbroadThirdStepPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final provider = ref.watch(birthAbroadProvider);
    return LocationSubModelFormBuilder(
      builder: (context, formModel, child) {
        return PrimaryScaffold(
          title: l10n.registroNacExt,
          subtitle: l10n.completeInformacionSolicitada,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectElementFromApi(
                    readOnly: operation.isRead,
                    formControl: formModel.provinceControl,
                    label: l10n.provincia,
                    init: operation.isRead,
                    initialValue: (data) {
                      final r = data?.firstWhere(
                        (element) => element.id == provider.provinceId?.id,
                      );
                      return r;
                    },
                    provider: provincesProvider,
                    onChanged: (p0) {
                      formModel.cantonControl?.value = null;
                    },
                  ),
                  ReactiveLocationSubModelFormConsumer(
                    builder: (_, __, ___) {
                      return Column(
                        children: [
                          SelectElementFromApi(
                            init: operation.isRead,
                            initialValue: (data) {
                              final r = data?.firstWhere(
                                (element) =>
                                    element.id == provider.cantonId?.id,
                              );
                              return r;
                            },
                            readOnly: !formModel.provinceControl!.valid ||
                                operation.isRead,
                            formControl: formModel.cantonControl,
                            label: l10n.canton,
                            provider: LocationByParentProvider(
                              parentId:
                                  formModel.provinceControl?.value?.id ?? '',
                            ),
                            onChanged: (p0) {
                              formModel.agencyControl?.value = null;
                            },
                          ),
                          SelectElementFromApi<AgencyModel>(
                            init: operation.isRead,
                            initialValue: (data) {
                              return data?.firstWhere(
                                (element) =>
                                    element.id == provider.agencyId?.id,
                              );
                            },
                            readOnly: !formModel.cantonControl!.valid ||
                                operation.isRead,
                            formControl: formModel.agencyControl,
                            label: l10n.agencia,
                            provider: AgenciesByCantonProvider(
                              cantonId:
                                  formModel.cantonControl?.value?.id ?? '',
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ReactiveLocationSubModelFormConsumer(
            builder: (_, formModel, __) => Container(
              child: operation.isRead
                  ? PrimaryButton(
                      title: l10n.aceptar,
                      onPressed: () => context.navigateTo(
                        BirthAbroadMainRoute(
                          typeServiceModel: typeServiceModel,
                        ),
                      ),
                    )
                  : PrimaryAsyncButton(
                      title: l10n.siguiente,
                      onPressed: formModel.form.valid
                          ? () async {
                              ref
                                  .read(birthAbroadProvider.notifier)
                                  .setThirdStep(
                                    locations: formModel.model,
                                  );
                              final value = ref.watch(birthAbroadProvider);
                              await ref
                                  .read(
                                createBirthAbroadProvider(
                                  model: value,
                                ).future,
                              )
                                  .when(
                                ok: (data) {
                                  context
                                    ..navigateTo(
                                      BirthAbroadMainRoute(
                                        typeServiceModel: typeServiceModel,
                                      ),
                                    )
                                    ..navigateTo(
                                      ChoosePaymentMethodRoute(
                                        transactionCode: data.transactionCode,
                                        service: typeServiceModel,
                                      ),
                                    );
                                },
                                err: (err) {
                                  showAlert(
                                    err.translate(context),
                                    TypeAlert.error,
                                  );
                                },
                              );
                            }
                          : null,
                    ),
            ).symmetricPadding(10, 10),
          ),
        );
      },
    );
  }
}
