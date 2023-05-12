import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marriage_celebration_radio_type_enum.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/widgets/upload_document_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

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
    return MarriageCelebrationModelFormBuilder(
      initState: (context, formModel) => formModel
        ..firstPartnerForm.conadisControl.value = false
        ..secondPartnerForm.conadisControl.value = false
        ..isOutsideControl.value = false
        ..requestOwnerTypeControl.value =
            MarriageCelebrationType.contractingParty,
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
                    return ScrollableContent(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (data[0]!.isNotEmpty)
                            PrimaryText(
                              '${l10n.contrayente} 1',
                              fontWeight: FontWeight.bold,
                            ),
                          UploadDocumentWidget(
                            data: data[0]!,
                            formModel: formModel.firstPartnerForm,
                          ),
                          if (data[1]!.isNotEmpty)
                            PrimaryText(
                              '${l10n.contrayente} 2',
                              fontWeight: FontWeight.bold,
                            ),
                          UploadDocumentWidget(
                            data: data[1]!,
                            formModel: formModel.secondPartnerForm,
                          ),
                        ],
                      ),
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
          bottomNavigationBar: ReactiveMarriageCelebrationModelFormConsumer(
            builder: (_, form, __) {
              return PrimaryAsyncButton(
                title: l10n.siguiente,
                onPressed: form.firstPartnerForm.documentsControl.valid &&
                        form.secondPartnerForm.documentsControl.valid &&
                        !documents.isLoading
                    ? () => ref
                        .read(marriageUpdateProvider.notifier)
                        .updateMarriage(
                          formModel.model.rejectingDocuments(),
                          marriageId,
                        )
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
