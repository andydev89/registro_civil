// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/modal_confirmation.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_file_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class MarriageCelebrationFourthStepRouterPage extends ConsumerWidget {
  const MarriageCelebrationFourthStepRouterPage({
    super.key,
    this.firstContractParty = true,
  });
  final bool firstContractParty;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final marriageCelebrationModel = ref.watch(marriageCelebrationProvider);
    final partner = firstContractParty
        ? marriageCelebrationModel.firstPartner
        : marriageCelebrationModel.secondPartner;
    final documents = ref.watch(
      MarriageDocumentsProvider(
        maritalStatus: partner!.maritalStatus!,
        hasChildren: partner.hasChildren!,
        childrenRelationShip: partner.childrenRelationship,
      ),
    );
    return PartnerFormBuilder(
      model: partner,
      builder: (_, formModel, __) {
        return PrimaryScaffold(
          title: l10n.solicitudCelMat,
          subtitle: l10n.ingreseInfSol,
          body: Expanded(
            child: documents
                .when(
                  skipLoadingOnRefresh: false,
                  data: (data) => data.isNotEmpty
                      ? ScrollableContent(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  PrimaryText(
                                    '${l10n.documentosContrayente}'
                                    ' ${firstContractParty ? 1 : 2}',
                                  ),
                                ],
                              ).verticalPadding(10),
                              PartnerFormBuilder(
                                model: formModel.model,
                                initState: (_, __) {
                                  for (final element in data) {
                                    final actual = FormControl<Document>(
                                      value: Document(
                                        referenceId: element.id,
                                      ),
                                      validators: element.required
                                          ? [documentFileRequiredValidator]
                                          : [],
                                    );
                                    formModel.documentsControl.add(
                                      actual,
                                    );
                                  }
                                },
                                builder: (_, __, ___) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ReactivePartnerFormArrayBuilder(
                                      formControl: formModel.documentsControl,
                                      itemBuilder: (_, index, value, __) {
                                        return Card(
                                          color: Colors.white,
                                          elevation: 4,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  PrimaryText(
                                                    data
                                                        .elementAt(index)
                                                        .documentName,
                                                    maxLines: 3,
                                                  ),
                                                ],
                                              ).verticalPadding(10),
                                              PrimaryText(l10n.archivo),
                                              PrimaryReactiveFilePicker<
                                                  Document>(
                                                formControl:
                                                    formModel.documentsControl
                                                            .controls
                                                            .elementAt(index)
                                                        as FormControl<
                                                            Document>,
                                                onFileSelected:
                                                    (document, p0) => formModel
                                                            .documentsControl
                                                            .controls
                                                            .elementAt(index)
                                                            .value =
                                                        document!
                                                            .copyWith(file: p0),
                                              ),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Flexible(
                                                    child: PrimaryText(
                                                      '${l10n.comentario}: '
                                                      ' ${data.elementAt(index).documentNote}',
                                                      overFlow:
                                                          TextOverflow.visible,
                                                      textAlign:
                                                          TextAlign.start,
                                                    ),
                                                  ),
                                                ],
                                              ).verticalPadding(5),
                                              Row(
                                                children: [
                                                  PrimaryText(
                                                    '${l10n.estado}: '
                                                    '${data.elementAt(index).required ? l10n.obligatorio : l10n.noObligatorio}',
                                                    maxLines: 2,
                                                  ),
                                                ],
                                              ).verticalPadding(5),
                                            ],
                                          ).symmetricPadding(10, 30),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [PrimaryText(l10n.nohayDocALLenar)],
                        ),
                  error: (error, _) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryText(
                        error.toString(),
                        maxLines: 7,
                      ),
                      const SizedBox(height: 10),
                      PrimaryButton(
                        title: l10n.recargar,
                        onPressed: () =>
                            ref.refresh(documents as Refreshable<void>),
                      ),
                    ],
                  ),
                  loading: () => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [CircularProgressIndicator()],
                  ),
                )
                .symmetricPadding(10, 20),
          ),
          bottomNavigationBar: ReactivePartnerFormConsumer(
            builder: (_, form, __) {
              return PrimaryButton(
                title: l10n.siguiente,
                onPressed: form.form.valid && !documents.isLoading
                    ? () {
                        if (firstContractParty) {
                          ref
                              .read(marriageCelebrationProvider.notifier)
                              .setPartner(form.model, 0);
                          context.navigateTo(
                            MarriageCelebrationFourthStepRouterRoute(
                              firstContractParty: false,
                              key: const ValueKey('secondContractParty'),
                            ),
                          );
                          return;
                        }
                        final ok = ValueNotifier<bool>(false);
                        ref
                            .read(marriageCelebrationProvider.notifier)
                            .setPartner(form.model, 1);
                        showContentDialog(
                          context,
                          content: ModalConfirmation(
                            ok: ok,
                            onConfirm: () => ref
                                .read(marriageProvider.notifier)
                                .marriage(marriageCelebrationModel)
                                .when(
                                  ok: (_) {
                                    ok.value = true;
                                    context.replaceRoute(
                                      NotificationRoute(
                                        title: l10n.confirmacionSol,
                                        message: l10n.solicitudExi,
                                        buttonText: l10n.misPedidos,
                                        bottomText: l10n
                                            .envNotCorElectronicoReservarTurno,
                                        notificationType:
                                            NotificationType.success,
                                        onPressed: (newContext) =>
                                            newContext.replaceRoute(
                                          const MyOrdersRoute(),
                                        ),
                                      ),
                                    );
                                  },
                                  err: (err) => showAlert(
                                    err.toString(),
                                    TypeAlert.error,
                                  ),
                                ),
                          ),
                        );
                      }
                    : null,
              );
            },
          ).symmetricPadding(10, 30),
        );
      },
    );
  }
}
