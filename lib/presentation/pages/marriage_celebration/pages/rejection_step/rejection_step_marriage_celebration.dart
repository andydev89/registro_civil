import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class RejectionStepMarriageCelebrationPage extends ConsumerWidget {
  const RejectionStepMarriageCelebrationPage({
    super.key,
    required this.marriageId,
  });
  final String marriageId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.solicitudCelMat,
      subtitle: l10n.ingreseInfSol,
      body: Expanded(
        child: LoadingProviderWidget(
          async: ref.watch(marriageByIdProvider(marriageId)),
          data: (response) {
            final data = response.rejectingDocuments();
            final owner = response.rejectingDocumentsOwner();
            final isEmpty = response.isEmptyRejectingDocuments() &&
                response.isEmptyRejectingDocumentsOwner();
            return DocumentsRejectionFormBuilder(
              initState: (context, formModel) {
                if (owner[RejectingMarriage.identityCard]!) {
                  formModel.identityCardControl
                      ?.setValidators([Validators.required]);
                }
                if (owner[RejectingMarriage.powerOfAttorney]!) {
                  formModel.powerOfAttorneyControl
                      ?.setValidators([Validators.required]);
                }
              },
              builder: (context, formModel, child) => Scaffold(
                backgroundColor: Colors.transparent,
                body: Visibility(
                  visible: !isEmpty,
                  replacement:
                      Center(child: PrimaryText(l10n.noHayElementosMostrar)),
                  child: ScrollableContent(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: owner[RejectingMarriage.identityCard]!,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(
                                l10n.cedulaIde,
                                fontWeight: FontWeight.bold,
                              ),
                              PrimaryReactiveFilePicker(
                                formControl: formModel.identityCardControl,
                              ),
                            ],
                          ),
                        ).horizontalPadding(10),
                        const SizedBox(height: 10),
                        Visibility(
                          visible: owner[RejectingMarriage.powerOfAttorney]!,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PrimaryText(
                                l10n.poderEsp,
                                fontWeight: FontWeight.bold,
                              ),
                              PrimaryReactiveFilePicker(
                                formControl: formModel.powerOfAttorneyControl,
                              ),
                            ],
                          ),
                        ).horizontalPadding(10),
                        const SizedBox(height: 10),
                        if (data[RejectingMarriage.firstPartnerDocuments]!
                            .isNotEmpty)
                          PrimaryText(
                            '${l10n.contrayente} 1',
                            fontWeight: FontWeight.bold,
                          ),
                        UploadDocumentWidget(
                          data: data[RejectingMarriage.firstPartnerDocuments]!,
                          formModel: formModel.firstPartnerDocumentsControl,
                        ),
                        const SizedBox(height: 10),
                        if (data[RejectingMarriage.secondPartnerDocuments]!
                            .isNotEmpty)
                          PrimaryText(
                            '${l10n.contrayente} 2',
                            fontWeight: FontWeight.bold,
                          ),
                        UploadDocumentWidget(
                          data: data[RejectingMarriage.secondPartnerDocuments]!,
                          formModel: formModel.secondPartnerDocumentsControl,
                        ),
                      ],
                    ),
                  ),
                ),
                bottomNavigationBar: ReactiveDocumentsRejectionFormConsumer(
                  builder: (_, form, __) {
                    return PrimaryAsyncButton(
                      title: l10n.siguiente,
                      onPressed: form.form.valid && !isEmpty
                          ? () => ref
                              .read(marriageUpdateProvider.notifier)
                              .updateMarriage(
                                form.model.copyWith(id: marriageId),
                              )
                              .when(
                                ok: (_) {
                                  context.navigateTo(
                                    MarriageCelebrationRouterRoute(
                                      showAgreement: false,
                                    ),
                                  );
                                  showAlert(
                                    l10n.documentosSubCor,
                                    TypeAlert.success,
                                  );
                                },
                                err: (err) => showAlert(
                                  err.translate(context),
                                  TypeAlert.error,
                                ),
                              )
                          : null,
                    );
                  },
                ).symmetricPadding(10, 30),
              ),
            );
          },
          onRefresh: () => ref.refresh(marriageByIdProvider(marriageId)),
          onRefreshIndicator: () =>
              ref.watch(marriageByIdProvider(marriageId).future),
        ),
      ),
    );
  }
}
