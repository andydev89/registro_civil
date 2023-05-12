import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/file_extensions.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_captio.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveFilePicker<T> extends StatelessWidget {
  const PrimaryReactiveFilePicker({
    super.key,
    required this.formControl,
    this.allowedExtensions = const [FileExtension.pdf],
    this.maxFileSizeMB = 5,
    this.onFileSelected,
    this.fileExtension = FileExtension.pdf,
    this.ligth = false,
    this.label,
    this.onRemove,
  }) : assert(
          maxFileSizeMB <= 5 && maxFileSizeMB > 0,
          'El tamaño debe ser entre 1 y 5 MB',
        ),assert(
         T == String || onRemove != null,
          'Debe implementar onRemove para poder eliminar el archivo',
        );
  final FormControl<T>? formControl;
  final List<FileExtension> allowedExtensions;
  final int maxFileSizeMB;
  final FileExtension fileExtension;
  final void Function(T?, String)? onFileSelected;
  final bool ligth;
  final String? label;
  final void Function()? onRemove;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final select = ValueNotifier(false);
    var name = '-';
    return ReactiveFormField<T, T>(
      formControl: formControl,
      builder: (field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!ligth && label != null)
              PrimaryText(
                label!,
              ),
            InkWell(
              onTap: !select.value
                  ? () async {
                      final result = await FilePicker.platform.pickFiles(
                        allowedExtensions:
                            allowedExtensions.map((e) => e.value).toList(),
                        type: allowedExtensions.isEmpty
                            ? FileType.any
                            : FileType.custom,
                      );
                      if (result != null) {
                        try {
                          final pdfFile = File(result.files.single.path!);
                          final maxMB = maxFileSizeMB * 1024 * 1024;
                          // Check file size
                          if (pdfFile.lengthSync() > maxMB) {
                            throw Exception(
                              '${l10n.archivoMayor5MB} ${maxFileSizeMB}MB',
                            );
                          }
                          final pdfBytes = pdfFile.readAsBytesSync();
                          final base64Pdf =
                              'data:application/${fileExtension.value};base64,${base64Encode(pdfBytes)}';
                          if (base64Pdf is T) {
                            field.didChange(base64Pdf as T);
                          } else {
                            onFileSelected?.call(
                              formControl!.value,
                              base64Pdf,
                            );
                          }
                          name = result.files.single.name;
                          select.value = true;
                        } catch (e) {
                          if (onRemove == null) field.didChange(null);
                          if (onRemove != null) onRemove!.call();
                          select.value = false;
                          showAlert(e.toString(), TypeAlert.error);
                        }
                      }
                    }
                  : null,
              child: ValueListenableBuilder<bool>(
                valueListenable: select,
                builder: (_, value, __) {
                  return Visibility(
                    visible: !value,
                    replacement: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: borderRadius(),
                        color: const Color.fromRGBO(217, 217, 217, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.50),
                            blurRadius: 4,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          allowedExtensions.first.image
                              .image()
                              .horizontalPadding(10),
                          const SizedBox(width: 10),
                          Expanded(
                            child: PrimaryText(
                              name,
                              textAlign: TextAlign.start,
                            ),
                          ),
                          PrimaryIconButton(
                            onPressed: () {
                              if (onRemove == null) field.didChange(null);
                              if (onRemove != null) onRemove!.call();
                              select.value = false;
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                    child: InputDecorator(
                      decoration: primaryInputDecoration(
                        errorText: field.errorText,
                        suffixIcon: Icon(
                          Icons.upload_outlined,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: PrimaryCaption(
                        '${allowedExtensions.map((e) => e.value).join(', ')} '
                        '(${maxFileSizeMB}MB)',
                        isToUpperCase: true,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ).verticalPadding(10);
                },
              ),
            ),
          ],
        ).verticalPadding(10);
      },
    );
  }
}
