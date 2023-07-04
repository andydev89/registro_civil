import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ElectronicSignatureFirstStepPage extends ConsumerWidget {
  const ElectronicSignatureFirstStepPage({
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
    return ESignatureFirstSubModelFormBuilder(
      model: operation.isCreate ? ESignatureFirstSubModel.fromMe(me)
          //En este caso tengo que hacer un metodo que a partir de la respuesta del get devuelva un ESignatureFirstSubModel
          : ESignatureFirstSubModel.fromMe(me),
      builder: (context, formModel, child) {
        final hasDeviceToken = ValueNotifier(
          formModel.hasDeviceTokenControl?.value ?? false,
        );
        return PrimaryScaffold(
          title: l10n.solFirmaElectronica,
          subtitle: l10n.ingreseInfSol,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryReactiveDropdown(
                    label: l10n.tipoPersona,
                    formControl: formModel.personTypeControl,
                    items: PersonType.values,
                    readOnly: operation.isRead,
                  ),
                  PrimaryReactiveDropdown(
                    label: l10n.tipoFirmaElectronica,
                    formControl: formModel.signatureTypeControl,
                    items: SignatureType.values,
                    readOnly: operation.isRead,
                  ),
                  /*PrimaryReactiveNuiField(
                    label: l10n.numCedula,
                    formControl: formModel.userNuiControl,
                    init: true,
                    readOnly: operation.isRead,
                  ),*/
                  PrimaryReactiveTextField(
                    label: l10n.numCedula,
                    formControl: formModel.userNuiControl,
                    readOnly: true,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  PrimaryReactiveCheckBox(
                    formControl: formModel.isTokenRenovationControl,
                    label: l10n.esRenovacion,
                  ),
                  PrimaryReactiveCheckBox(
                    formControl: formModel.isACustomsAgentControl,
                    label: l10n.esAuxAduana,
                  ),
                  PrimaryReactiveCheckBox(
                    formControl: formModel.hasDeviceTokenControl,
                    label: l10n.tieneToken,
                    onChanged: (value) =>
                    hasDeviceToken.value = value.value ?? false,
                  ),
                  ValueListenableBuilder<bool>(
                    valueListenable: hasDeviceToken,
                    builder: (_, value, __) {
                      return Visibility(
                        visible: value,
                        child: PrimaryReactiveTextField(
                          readOnly: operation.isRead,
                          label: l10n.noSerieToken,
                          formControl: formModel.deviceTokenSerialNumberControl,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ReactiveESignatureFirstSubModelFormConsumer(
            builder: (_, formModel, __) => PrimaryAsyncButton(
              title: l10n.siguiente,
              onPressed: formModel.form.valid
                  ? () async {
                ref
                    .read(electronicSignatureProvider.notifier)
                    .setFirstStep(
                  signatureFirstSubModel: formModel.model,
                );
                final nuiModel =
                NuiModel(nui: formModel.model.userNui);
                await ref
                    .read(
                  registerValidateCitizenProvider(nuiModel)
                      .future,
                )
                    .when(
                  ok: (citizen) {
                    context.navigateTo(
                      ElectronicSignatureSecondStepRoute(
                        operation: operation,
                        citizen: citizen,
                        typeServiceModel: typeServiceModel,
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
            ).symmetricPadding(10, 10),
          ),
        );
      },
    );
  }
}
