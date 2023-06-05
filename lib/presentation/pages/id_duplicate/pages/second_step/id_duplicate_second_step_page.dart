import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/id_duplicate/id_duplicate_reason.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:registro_civil_apk/data/providers/id_duplicate/id_duplicate.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class IdDuplicateSecondStepPage extends ConsumerWidget {
  const IdDuplicateSecondStepPage(
      {super.key, required this.typeServiceModel, required this.me});

  final TypeServiceModel typeServiceModel;
  final MeModel me;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.duplicadoCed,
      subtitle: l10n.completeInformacionSolicitada,
      body: ProcedureReasonSubModelFormBuilder(
        builder: (context, formModel, child) => Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryReactiveDropdown(
                  label: l10n.motivoSol,
                  formControl: formModel.reasonControl,
                  items: IdDuplicateReason.values,
                ),
                SelectElementFromApi(
                  formControl: formModel.provinceControl,
                  label: l10n.provincia,
                  provider: provincesProvider,
                  onChanged: (p0) => formModel.agencyControl.value = null,
                ),
                ReactiveProcedureReasonSubModelFormConsumer(
                  builder: (_, __, ___) => SelectElementFromApi(
                    readOnly: !formModel.provinceControl.valid,
                    formControl: formModel.agencyControl,
                    label: l10n.agencia,
                    provider: AgenciesByProvinceProvider(
                      provinceId: formModel.provinceControl.value?.id ?? '',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ReactiveProcedureReasonSubModelFormConsumer(
                  builder: (context, formModel, child) => PrimaryButton(
                    title: l10n.siguiente,
                    onPressed: formModel.form.valid
                        ? () {
                            ref
                                .read(idDuplicateProvider.notifier)
                                .setSecondStep(formModel.model);
                            final me = ref.read(meProvider).value ?? MeModel();
                            context.navigateTo(
                              IdDuplicateDetailRoute(
                                typeServiceModel: typeServiceModel,
                                me: me,
                              ),
                            );
                          }
                        : null,
                  ),
                ),
                PrimaryButton(
                  title: l10n.cancelar,
                  onPressed: () => context.popRoute(),
                ).verticalPadding(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
