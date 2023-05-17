import 'package:auto_route/auto_route.dart';
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
    final documents = ref.watch(marriageByIdProvider(marriageId));
    return DocumentsRejectionFormBuilder(
      builder: (_, formModel, __) {
        return PrimaryScaffold(
          title: l10n.solicitudCelMat,
          subtitle: l10n.ingreseInfSol,
          body: Expanded(
            child: documents
                .when(
                  skipLoadingOnRefresh: false,
                  data: (response) {
                    final data = response.rejectingDocuments();
                    final owner = response.rejectingDocumentsOwner();
                    return DocumentsRejectionFormBuilder(
                      model: formModel.model,
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
                      builder: (context, formModel, snapshot) {
                        return ScrollableContent(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Visibility(
                                visible: owner[RejectingMarriage.identityCard]!,
                                child: Column(
                                  children: [
                                    PrimaryText(
                                      l10n.cedulaIde,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    PrimaryReactiveFilePicker(
                                      formControl:
                                          formModel.identityCardControl,
                                    ),
                                  ],
                                ),
                              ),
                              Visibility(
                                visible:
                                    owner[RejectingMarriage.powerOfAttorney]!,
                                child: Column(
                                  children: [
                                    PrimaryText(
                                      l10n.poderEsp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    PrimaryReactiveFilePicker(
                                      formControl:
                                          formModel.powerOfAttorneyControl,
                                    ),
                                  ],
                                ),
                              ),
                              if (data[0]!.isNotEmpty)
                                PrimaryText(
                                  '${l10n.contrayente} 1',
                                  fontWeight: FontWeight.bold,
                                ),
                              UploadDocumentWidget(
                                data: data[0]!,
                                formModel:
                                    formModel.firstPartnerDocumentsControl,
                              ),
                              if (data[1]!.isNotEmpty)
                                PrimaryText(
                                  '${l10n.contrayente} 2',
                                  fontWeight: FontWeight.bold,
                                ),
                              UploadDocumentWidget(
                                data: data[1]!,
                                formModel:
                                    formModel.secondPartnerDocumentsControl,
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  error: (error, _) => ErrorStatus(
                    messagge: error.toString(),
                    onPressed: () =>
                        ref.refresh(marriageByIdProvider(marriageId)),
                  ),
                  loading: () => const LoadingStatus(),
                )
                .symmetricPadding(10, 20),
          ),
          bottomNavigationBar: ReactiveDocumentsRejectionFormConsumer(
            builder: (_, form, __) {
              return PrimaryAsyncButton(
                title: l10n.siguiente,
                onPressed: form.form.valid && !documents.isLoading
                    ? () => ref
                        .read(marriageUpdateProvider.notifier)
                        .updateMarriage(form.model.copyWith(id: marriageId))
                        .when(
                          ok: (_) {
                            context.navigateBack();
                            ref.invalidate(marriagesProvider());
                            showAlert(l10n.documentosSubCor, TypeAlert.success);
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
        );
      },
    );
  }
}
