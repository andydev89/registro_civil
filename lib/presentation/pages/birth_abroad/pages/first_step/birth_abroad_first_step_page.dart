import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/birth_abroad/birth_abroad.dart';
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
    final provider = ref.watch(birthAbroadProvider.notifier);
    return LoadingProviderWidget(
      async: ref.watch(loginProvider),
      data: (isLoggedIn) {
        var isResident = isLoggedIn;
        return RegisterOwnerSubModelFormBuilder(
          /*initState: (context, formModel) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              final type =
                  isResident ? ForeignType.resident : ForeignType.noResident;
              provider.setForeignType(type);
            });
          },*/
          model: operation.isCreate ? null : provider.getFirstStep(),
          builder: (context, formModel, child) {
            final typeNotifier = ValueNotifier(
              formModel.typeControl?.value,
            );
            final regOwnerTypeNotifier = ValueNotifier(
              formModel.registerOwnerTypeControl?.value,
            );
            if (!isLoggedIn) {
              formModel.typeControl?.updateValue(ForeignType.noResident);
              formModel.registerOwnerTypeControl
                  ?.updateValue(RegisterOwnerType.titular);
            }
            return PrimaryScaffold(
              title: l10n.registroNacExt,
              subtitle: l10n.completeInformacionSolicitada,
              body: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PrimaryReactiveDropdown(
                        label: l10n.tipoTramite,
                        formControl: formModel.typeControl,
                        items: ForeignType.values,
                        readOnly: operation.isRead || !isLoggedIn,
                        maxLines: 5,
                        onChanged: (value) {
                          isResident = value.value == ForeignType.resident;
                          typeNotifier.value = value.value;
                          regOwnerTypeNotifier.value = null;
                          if (!isResident) {
                            formModel.identificationControl?.clearValidators();
                            formModel.identificationControl
                                ?.setValidators([requiredValidator]);
                          } else {
                            formModel.identificationControl?.clearValidators();
                            formModel.identificationControl?.setValidators([
                              requiredValidator,
                              ecuadorDniValidator,
                              length10Validator
                            ]);
                          }
                          formModel.identificationControl
                              ?.updateValueAndValidity();
                          formModel.registerOwnerTypeControl?.reset();
                          formModel.identificationControl?.reset();
                          formModel.nameControl?.reset();
                          formModel.phoneControl?.reset();
                          formModel.emailControl?.reset();
                        },
                      ),
                      ValueListenableBuilder<ForeignType?>(
                        valueListenable: typeNotifier,
                        builder: (_, value, __) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryReactiveDropdown(
                                label: l10n.tipoRegPropietario,
                                formControl: formModel.registerOwnerTypeControl,
                                items: isLoggedIn
                                    ? RegisterOwnerTypeExtension.listValues(
                                        isResident: isResident,
                                      )
                                    : RegisterOwnerType.values,
                                readOnly: operation.isRead || !isLoggedIn,
                                onChanged: (value) =>
                                    regOwnerTypeNotifier.value = value.value,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              PrimaryTitle(
                                title: l10n.datosNacido,
                                textAlign: TextAlign.start,
                              ),
                              ValueListenableBuilder<RegisterOwnerType?>(
                                valueListenable: regOwnerTypeNotifier,
                                builder: (_, value, __) {
                                  if (operation.isCreate &&
                                      value != null &&
                                      isResident) {
                                    if (value == RegisterOwnerType.titular) {
                                      formModel.identificationControl
                                          ?.updateValue(me.identification);
                                      formModel.nameControl?.updateValue(
                                        '${me.firstName} ${me.lastName}',
                                      );
                                      formModel.phoneControl
                                          ?.updateValue(me.phone);
                                      formModel.emailControl
                                          ?.updateValue(me.email);
                                    } else {
                                      formModel.identificationControl?.reset();
                                      formModel.nameControl?.reset();
                                      formModel.phoneControl
                                          ?.updateValue(me.phone);
                                      formModel.emailControl
                                          ?.updateValue(me.email);
                                    }
                                  }
                                  return Column(
                                    children: [
                                      IdentificationWidget(
                                        isResident: isResident,
                                        ref: ref,
                                        value: value,
                                        formModel: formModel,
                                        operation: operation,
                                      ),
                                      PrimaryReactiveTextField(
                                        label: l10n.nombreApe,
                                        readOnly:
                                            isResident || operation.isRead,
                                        formControl: formModel.nameControl,
                                        textCapitalization:
                                            TextCapitalization.words,
                                      ),
                                      PrimaryReactiveTextField(
                                        label: l10n.telefonoCel,
                                        readOnly: operation.isRead,
                                        formControl: formModel.phoneControl,
                                        keyboardType: TextInputType.phone,
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          LengthLimitingTextInputFormatter(10),
                                        ],
                                      ),
                                      PrimaryReactiveEmailField(
                                        label: l10n.correoE,
                                        readOnly: operation.isRead,
                                        formControl: formModel.emailControl,
                                      ),
                                      if (value != null &&
                                          value != RegisterOwnerType.titular)
                                        RequestOwnerWidget(me: me),
                                    ],
                                  );
                                },
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
                          // final errors = formModel.form.errors;
                          ref.read(birthAbroadProvider.notifier).setFirstStep(
                                registerOwner: formModel.model,
                                requestOwnerId: me.id,
                                isResident: isResident,
                              );
                          context.navigateTo(
                            BirthAbroadSecondStepRoute(
                              typeServiceModel: typeServiceModel,
                              operation: operation,
                            ),
                          );
                        }
                      : null,
                ).symmetricPadding(10, 10),
              ),
            );
          },
        );
      },
      onRefresh: () => {},
      onRefreshIndicator: () async => {},
    );
  }
}
