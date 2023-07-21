import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class BirthAbroadFirstStepPage extends ConsumerWidget {
  const BirthAbroadFirstStepPage({
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
    // final duplicate = ref.watch(idDuplicateProvider);
    return RegisterOwnerSubModelFormBuilder(
      // model: operation.isCreate ? RegisterOwnerSubModel.fromMe(me) : null,
      builder: (context, formModel, child) {
        final regOwnerTypeNotifier = ValueNotifier(
          formModel.registerOwnerTypeControl?.value,
        );
        return PrimaryScaffold(
          title: l10n.registroNacExt,
          subtitle: l10n.completeInformacionSolicitada,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PrimaryReactiveDropdown(
                    label: l10n.tipoRegPropietario,
                    formControl: formModel.registerOwnerTypeControl,
                    items: RegisterOwnerType.values,
                    readOnly: operation.isRead,
                    onChanged: (value) =>
                        regOwnerTypeNotifier.value = value.value,
                  ),
                  ValueListenableBuilder<RegisterOwnerType?>(
                    valueListenable: regOwnerTypeNotifier,
                    builder: (_, value, __) {
                      if (value == RegisterOwnerType.attorney) {
                        formModel.identificationControl
                            ?.updateValue(me.identification);
                        formModel.nameControl
                            ?.updateValue('${me.firstName} ${me.lastName}');
                        formModel.phoneControl?.updateValue(me.phone);
                        formModel.emailControl?.updateValue(me.email);
                      } else {
                        formModel.identificationControl?.reset();
                        formModel.nameControl?.reset();
                        formModel.phoneControl?.updateValue(me.phone);
                        formModel.emailControl?.updateValue(me.email);
                      }
                      return Column(
                        children: [
                          PrimaryReactiveTextField(
                            label: l10n.numCedula,
                            readOnly: value == RegisterOwnerType.attorney,
                            formControl: formModel.identificationControl,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ],
                            keyboardType: TextInputType.number,
                            suffixIcon: value != null &&
                                    value != RegisterOwnerType.attorney
                                ? PrimaryAsyncIconButton(
                                    icon: Assets.svg.starCheck.svg(
                                      width: 20,
                                      height: 20,
                                    ),
                                    onPressed: () => ref
                                        .read(
                                          registerValidateCitizenProvider(
// ignore: provider_parameters
                                            NuiModel(
                                              nui: formModel
                                                  .identificationControl!
                                                  .value!,
                                            ),
                                          ).future,
                                        )
                                        .when(
                                          ok: (citizen) {
                                            var fullName = '';
                                            if (citizen.nombres.isEmpty ||
                                                citizen.apellidos.isEmpty) {
                                              final names =
                                                  findNames(citizen.nombre);
                                              fullName =
                                                  '${names['firstName'] ?? ''} '
                                                  '${names['lastName'] ?? ''}';
                                            } else {
                                              fullName = '${citizen.nombres} '
                                                  '${citizen.apellidos}';
                                            }
                                            formModel.nameControl
                                                ?.updateValue(fullName);
                                          },
                                          err: (error) => showAlert(
                                            error.translate(context),
                                            TypeAlert.error,
                                          ),
                                        ),
                                  )
                                : null,
                            suffixHorizontalPadding: 0,
                          ),
                          PrimaryReactiveTextField(
                            label: l10n.nombreApe,
                            readOnly: true,
                            formControl: formModel.nameControl,
                          ),
                          PrimaryReactiveTextField(
                            label: l10n.telefonoCel,
                            readOnly: true,
                            formControl: formModel.phoneControl,
                          ),
                          PrimaryReactiveTextField(
                            label: l10n.correoE,
                            readOnly: true,
                            formControl: formModel.emailControl,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ReactiveRegisterOwnerSubModelFormConsumer(
            builder: (_, formModel, __) => PrimaryButton(
              title: l10n.siguiente,
              onPressed: formModel.form.valid
                  ? () {
                      final ownerType = formModel.model.registerOwnerType ??
                          RegisterOwnerType.attorney;
                      ref.read(birthAbroadProvider.notifier).setFirstStep(
                            registerOwner: formModel.model,
                            foreignType: ForeignType.resident,
                            requestOwnerId: me.id,
                          );
                      context.navigateTo(
                        BirthAbroadSecondStepRoute(
                          typeServiceModel: typeServiceModel,
                          operation: operation,
                          registerOwnerType: ownerType,
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
