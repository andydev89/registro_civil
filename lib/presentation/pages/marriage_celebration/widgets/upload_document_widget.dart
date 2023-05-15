import 'package:power_ups/extensions/widget_extension.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/primary_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_file_picker.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class UploadDocumentWidget extends StatelessWidget {
  const UploadDocumentWidget({
    super.key,
    required this.data,
    required this.formModel,
  });

  final List<Document> data;
  final PartnerForm formModel;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PartnerFormBuilder(
      model: formModel.model,
      initState: (_, __) {
        for (final element in data) {
          final actual = FormControl<Document>(
            value: Document(
              referenceId: element.referenceId,
            ),
            validators: [documentFileRequiredValidator],
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
              final formControl = formModel.documentsControl.controls
                  .elementAt(index) as FormControl<Document>;
              return PrimaryCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PrimaryText(
                          data.elementAt(index).name ?? '-',
                          maxLines: 3,
                        ),
                      ],
                    ).verticalPadding(10),
                    PrimaryText(l10n.archivo),
                    PrimaryReactiveFilePicker<Document>(
                      formControl: formControl,
                      onRemove: () => formControl.updateValue(
                        formControl.value!.copyWith(file: ''),
                      ),
                      onFileSelected: (_, p0) => formControl
                          .updateValue(formControl.value!.copyWith(file: p0)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: PrimaryText(
                            '${l10n.comentario}: '
                            ' ${data.elementAt(index).comment ?? '-'}',
                            overFlow: TextOverflow.visible,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ).verticalPadding(5),
                    Row(
                      children: [
                        PrimaryText(
                          '${l10n.estado}: '
                          '${l10n.obligatorio}',
                        ),
                      ],
                    ).verticalPadding(5),
                  ],
                ),
              ).verticalPadding(10);
            },
          ),
        ],
      ),
    );
  }
}
