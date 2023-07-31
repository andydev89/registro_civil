import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/enum/commons/commons.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class BirthAbroadSecondStepPage extends ConsumerWidget {
  const BirthAbroadSecondStepPage({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
  });

  final TypeServiceModel typeServiceModel;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final provider = ref.watch(birthAbroadProvider.notifier);
    return DocumentsSubModelFormBuilder(
      model: operation.isCreate ? null : provider.getSecondStep(),
      initState: (context, formModel) {
        formModel.registerOwnerTypeControl
            .updateValue(provider.getRegisterOwnerType());
      },
      builder: (context, formModel, child) {
        final ownerTypeNotifier = ValueNotifier(
          formModel.registerOwnerTypeControl.value,
        );
        return PrimaryScaffold(
          title: l10n.registroNacExt,
          subtitle: l10n.completeInformacionSolicitada,
          body: Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SecondaryReactiveFilePicker<Certificate>(
                    label: l10n.certificadoNacimiento,
                    formControl: formModel.birthCertificateControl,
                    onRemove: () => formModel.birthCertificateControl?.reset(),
                    init: operation.isEditOrRead,
                    onFileSelected: (
                      document,
                      p0,
                      name,
                    ) {
                      formModel.birthCertificateControl
                          ?.updateValue(Certificate(name: name, file: p0));
                    },
                    initialValue: (data) {
                      return data;
                    },
                    onViewDetail: () {
                      context.navigateTo(
                        BirthAbroadDocumentDetailRoute(
                          document:
                              formModel.birthCertificateControl!.value!.file!.replaceFirst('data:application/pdf;base64,', ''),
                        ),
                      );
                    },
                    operation: operation,
                    provider: DocumentByIdProvider(
                      id: formModel.birthCertificateControl?.value?.id ?? '',
                    ),
                  ),
                  SecondaryReactiveFilePicker<Certificate>(
                    label: l10n.cedulaNacimiento,
                    init: operation.isEditOrRead,
                    formControl: formModel.identityControl,
                    onRemove: () => formModel.identityControl?.reset(),
                    onFileSelected: (
                      document,
                      p0,
                      name,
                    ) {
                      formModel.identityControl
                          ?.updateValue(Certificate(name: name, file: p0));
                    },
                    initialValue: (data) {
                      return data;
                    },
                    onViewDetail: () {
                      context.navigateTo(
                        BirthAbroadDocumentDetailRoute(
                          document:
                          formModel.identityControl!.value!.file!,
                        ),
                      );
                    },
                    operation: operation,
                    provider: DocumentByIdProvider(
                      id: formModel.identityControl?.value?.id ?? '',
                    ),
                  ),
                  ValueListenableBuilder<RegisterOwnerType?>(
                    valueListenable: ownerTypeNotifier,
                    builder: (_, value, __) {
                      return Visibility(
                        visible: value == RegisterOwnerType.attorney,
                        child: SecondaryReactiveFilePicker<Certificate>(
                          label: l10n.poderEspNac,
                          init: operation.isEditOrRead,
                          formControl: formModel.powerOfAttorneyControl,
                          onRemove: () =>
                              formModel.powerOfAttorneyControl?.reset(),
                          onFileSelected: (
                            document,
                            p0,
                            name,
                          ) {
                            formModel.powerOfAttorneyControl?.updateValue(
                              Certificate(name: name, file: p0),
                            );
                          },
                          operation: operation,
                          initialValue: (data) {
                            return data;
                          },
                          onViewDetail: () {
                            context.navigateTo(
                              BirthAbroadDocumentDetailRoute(
                                document:
                                formModel.powerOfAttorneyControl!.value!.file!,
                              ),
                            );
                          },
                          provider: DocumentByIdProvider(
                            id: formModel.powerOfAttorneyControl?.value?.id ??
                                '',
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: ReactiveDocumentsSubModelFormConsumer(
            builder: (_, formModel, __) => Container(
              child: operation.isEdit
                  ? PrimaryAsyncButton(
                      title: l10n.confirmar,
                      onPressed: formModel.form.valid
                          ? () async {
                              await ref
                                  .read(
                                editBirthAbroadDocsProvider(
// ignore: provider_parameters
                                  model: BirthAbroadDocumentModel
                                      .fromDocumentsSubModel(
                                    id: provider.getId()!,
                                    documentsSubModel: formModel.model,
                                  ),
                                ).future,
                              )
                                  .when(
                                ok: (data) {
                                  context.navigateTo(
                                    BirthAbroadMainRoute(
                                      typeServiceModel: typeServiceModel,
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
                    )
                  : PrimaryButton(
                      title: l10n.siguiente,
                      onPressed: formModel.form.valid
                          ? () {
                              if (operation.isCreate) {
                                ref
                                    .read(birthAbroadProvider.notifier)
                                    .setSecondStep(
                                      documents: formModel.model,
                                    );
                              }
                              context.navigateTo(
                                BirthAbroadThirdStepRoute(
                                  typeServiceModel: typeServiceModel,
                                  operation: operation,
                                ),
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
