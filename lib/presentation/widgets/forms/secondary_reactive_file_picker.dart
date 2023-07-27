import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/data/models/birth_abroad/birth_abroad.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/status/refresh_status.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_caption.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class SecondaryReactiveFilePicker<T extends Translatable>
    extends ConsumerWidget {
  const SecondaryReactiveFilePicker({
    super.key,
    required this.formControl,
    this.allowedExtensions = const [FileExtension.pdf],
    this.maxFileSizeMB = 5,
    this.onFileSelected,
    this.fileExtension = FileExtension.pdf,
    this.ligth = false,
    this.label,
    this.onRemove,
    required this.provider,
    this.initialValue,
    this.init = false,
    required this.operation,
  })  : assert(
          maxFileSizeMB <= 5 && maxFileSizeMB > 0,
          'El tamaño debe ser entre 1 y 5 MB',
        ),
        assert(
          T == String || onRemove != null,
          'Debe implementar onRemove para poder eliminar el archivo',
        );
  final FormControl<T>? formControl;
  final List<FileExtension> allowedExtensions;
  final int maxFileSizeMB;
  final FileExtension fileExtension;
  final void Function(T?, String, String?)? onFileSelected;
  final bool ligth;
  final String? label;
  final T? Function(T?)? initialValue;
  final void Function()? onRemove;
  final AutoDisposeFutureProvider<Result<T, StatusCodeType>> provider;
  final bool init;
  final Crud operation;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final elements = ref.watch(provider);
    var name = '-';
    final select = ValueNotifier(false);
    if (init && elements.asData?.value != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final data = elements.asData?.value.when(
          ok: (data) => data,
          err: (error) => _onError(),
        );
        if (data != null) {
          formControl?.value = initialValue?.call(data);
          if (data is Certificate) {
            name = data.name ?? '';
          }
          select.value = true;
        }
      });
    }
    return ReactiveFormField<T, T>(
      formControl: formControl,
      builder: (field) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!ligth && label != null)
              PrimaryText(
                label!,
                textAlign: TextAlign.justify,
              ),
            InkWell(
              onTap: (!select.value && !operation.isRead) || (operation.isEdit)
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
                          name = result.files.single.name;
                          if (base64Pdf is T) {
                            field.didChange(base64Pdf as T);
                          } else {
                            onFileSelected?.call(
                              formControl?.value,
                              base64Pdf,
                              name,
                            );
                          }
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
                          if (operation.isCreate)
                            PrimaryIconButton(
                              onPressed: () {
                                if (onRemove == null) field.didChange(null);
                                if (onRemove != null) onRemove!.call();
                                select.value = false;
                              },
                              icon: const Icon(Icons.delete),
                            )
                          else if (operation.isRead)
                            PrimaryIconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_red_eye),
                            )
                          else
                            PrimaryIconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            ),
                        ],
                      ),
                    ),
                    child: InputDecorator(
                      decoration: primaryInputDecoration(
                        errorText: field.errorText,
                        suffixIcon: elements.isLoading
                            ? const FittedBox(
                                fit: BoxFit.scaleDown,
                                child: CircularProgressIndicator(),
                              )
                            : elements.hasError
                                ? RefreshStatus(
                                    onRefresh: () => ref.refresh(provider),
                                  )
                                : Icon(
                                    Icons.upload_outlined,
                                    color: Theme.of(context).primaryColor,
                                  ),
                      ),
                      child: PrimaryCaption(
                        elements.isLoading
                            ? l10n.cargando
                            : elements.hasError
                                ? l10n.errorAlObtenerLosDatos
                                : '${allowedExtensions.map((e) => e.value).join(', ')} '
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

  T? _onError() {
    formControl?.reset();
    return null;
  }
}
