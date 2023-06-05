import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/id_duplicate/id_duplicate.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/buttons.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/secondary_reactive_date_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class IdDuplicateFirstStepPage extends ConsumerWidget {
  const IdDuplicateFirstStepPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final me = ref.watch(meProvider).value ?? MeModel();
    return PrimaryScaffold(
      title: l10n.duplicadoCed,
      subtitle: l10n.completeInformacionSolicitadaCed,
      body: ProcedureTypeSubModelFormBuilder(
        builder: (context, formModel, child) => Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryReactiveDropdown(
                  label: l10n.tipoTramite,
                  formControl: formModel.idDuplicateProcedureTypeControl,
                  items: IdDuplicateProcedureType.values,
                ),
                PrimaryReactiveNuiField(
                  label: l10n.numCedula,
                  formControl: formModel.nuiControl,
                  init: true,
                ),
                SecondaryReactiveDatePicker(
                  label: l10n.fechaNac,
                  formControl: formModel.birthDateControl,
                  // readOnly: true,
                  onDaySelected: (DateTime? selected) {
                    if (selected != null) {
                      formModel.birthDateControl.value = selected;
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ReactiveProcedureTypeSubModelFormConsumer(
                  builder: (_, formModel, __) => PrimaryButton(
                    title: l10n.siguiente,
                    onPressed: formModel.form.valid
                        ? () {
                            ref.read(idDuplicateProvider.notifier).setFirstStep(
                                  procedureType: formModel.model,
                                  requestOwner: me.id,
                                );
                            context.navigateTo(
                              IdDuplicateSecondStepRoute(
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
