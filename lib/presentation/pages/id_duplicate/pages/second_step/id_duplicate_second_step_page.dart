import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/enum/id_duplicate/id_duplicate_reason.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:registro_civil_apk/data/providers/id_duplicate/id_duplicate.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class IdDuplicateSecondStepPage extends ConsumerWidget {
  const IdDuplicateSecondStepPage({
    super.key,
    required this.typeServiceModel,
    required this.me,
    this.operation = Crud.create,
  });

  final TypeServiceModel typeServiceModel;
  final MeModel me;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final duplicate = ref.watch(idDuplicateProvider);
    return ProcedureReasonSubModelFormBuilder(
      initState: (context, formModel) {
        if (operation.isRead) {
          formModel.reasonControl.value = IdDuplicateReason.values.firstWhere(
            (element) => element == duplicate.reasonType,
          );
        }
      },
      builder: (context, formModel, child) {
        return PrimaryScaffold(
          title: l10n.duplicadoCed,
          subtitle: l10n.completeInformacionSolicitada,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryReactiveDropdown(
                    label: l10n.motivoSol,
                    readOnly: operation.isRead,
                    formControl: formModel.reasonControl,
                    items: IdDuplicateReason.values,
                  ),
                  SelectElementFromApi(
                    init: operation.isRead,
                    initialValue: (data) => data?.firstWhere(
                      (element) => element.id == duplicate.provinceId?.id,
                    ),
                    readOnly: operation.isRead,
                    formControl: formModel.provinceControl,
                    label: l10n.provincia,
                    provider: provincesProvider,
                    onChanged: (p0) => formModel.agencyControl.value = null,
                  ),
                  ReactiveProcedureReasonSubModelFormConsumer(
                    builder: (_, __, ___) => SelectElementFromApi(
                      init: operation.isRead,
                      initialValue: (data) {
                        return data?.firstWhere(
                          (element) => element.id == duplicate.agency?.id,
                        );
                      },
                      readOnly:
                          !formModel.provinceControl.valid || operation.isRead,
                      formControl: formModel.agencyControl,
                      label: l10n.agencia,
                      provider: AgenciesByProvinceProvider(
                        provinceId: formModel.provinceControl.value?.id ?? '',
                      ),
                    ),
                  ),
                  if (operation.isCreate)
                    PrimaryReactiveCheckBox(
                      formControl: formModel.acceptTermsControl,
                      label: l10n.aceptoTermCondiciones,
                    ).verticalPadding(20),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: operation.isCreate
              ? ReactiveProcedureReasonSubModelFormConsumer(
                  builder: (context, formModel, child) => PrimaryButton(
                    title: operation.isCreate ? l10n.siguiente : l10n.aceptar,
                    onPressed: formModel.form.valid
                        ? () {
                            if (operation.isCreate) {
                              ref
                                  .read(idDuplicateProvider.notifier)
                                  .setSecondStep(formModel.model);
                              final me =
                                  ref.read(meProvider).value ?? MeModel();
                              context.navigateTo(
                                IdDuplicateDetailRoute(
                                  typeServiceModel: typeServiceModel,
                                  me: me,
                                ),
                              );
                            } else {
                              context.navigateTo(
                                IdDuplicateMainRoute(
                                  typeServiceModel: typeServiceModel,
                                ),
                              );
                            }
                          }
                        : null,
                  ),
                ).symmetricPadding(10, 20)
              : PrimaryButton(
                  title: l10n.aceptar,
                  onPressed: () => context.navigateTo(
                    IdDuplicateMainRoute(
                      typeServiceModel: typeServiceModel,
                    ),
                  ),
                ).symmetricPadding(10, 20),
        );
      },
    );
  }
}
