import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/date_picker/date_picker.dart'
    as picker;
import 'package:registro_civil_apk/presentation/widgets/forms/forms.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class EditableReactiveDatePicker<T> extends StatefulWidget {
  EditableReactiveDatePicker({
    this.formControl,
    this.label,
    this.readOnly = false,
    this.light = false,
    this.hintText,
    this.onTap,
    this.setSuffixIconConstraints = false,
    this.modifiedData,
    required this.onSavePressed,
    required this.onCancelPressed,
    this.showButton = true,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDaySelected,
    super.key,
  });

  final FormControl<DateTime>? formControl;
  final String? label;
  final bool readOnly;
  final bool light;
  final String? hintText;
  final bool setSuffixIconConstraints;
  final void Function(FormControl<T>)? onTap;
  ModifiedDataModel? modifiedData;
  final void Function(DateTime? value) onSavePressed;
  final VoidCallback onCancelPressed;
  bool showButton;
  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final void Function(DateTime?)? onDaySelected;

  @override
  State<StatefulWidget> createState() => _EditableReactiveDatePickerState();
}

class _EditableReactiveDatePickerState<T>
    extends State<EditableReactiveDatePicker> {
  bool isEditing = false;
  DateTime? previousValue;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    previousValue = widget.formControl?.value;
    if (widget.modifiedData != null &&
        widget.modifiedData!.modified.isNotEmpty) {
      final date =
          DateFormat('dd/MM/yyyy').parse(widget.modifiedData!.modified);
      widget.formControl?.updateValue(date);
    }
  }

  void _onButtonPressed() {
    if (isEditing) {
      widget.onSavePressed(previousValue);
      isEditing = false;
    } else if (isEdited) {
      widget.onCancelPressed();
    } else {
      isEditing = true;
      focusNode.requestFocus();
    }
    setState(() {});
  }

  bool get isEdited => widget.modifiedData != null;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final readOnly = widget.readOnly || !isEditing;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            AbsorbPointer(
              absorbing: readOnly,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!widget.light && widget.label != null)
                    PrimaryText(
                      widget.label!,
                    ).verticalPadding(5),
                  ReactiveTextField(
                    readOnly: readOnly,
                    valueAccessor: DateTimeValueAccessor(
                      dateTimeFormat: DateFormat('dd/MM/yyyy'), // Define el formato deseado
                    ),
                    decoration: editableInputDecoration(
                      light: widget.light,
                      hintText: widget.hintText ?? '${l10n.escriba}...',
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(
                          right: widget.showButton ? 60 : 20,
                          left: 10,
                        ),
                        child: Assets.svg.calendar.svg(
                          width: 20,
                          height: 20,
                        ),
                      ),
                      filled: isEdited,
                      setSuffixIconConstraints: widget.setSuffixIconConstraints,
                      readOnly: widget.readOnly,
                    ),
                    onTap: (control) async {
                      if (!readOnly) {
                        final pickedDate = await picker.showDatePicker(
                          context: context,
                          initialDate:
                              widget.formControl?.value ?? DateTime.now(),
                          firstDate: widget.firstDate ?? DateTime.utc(1800),
                          lastDate: widget.lastDate ?? DateTime.utc(2100),
                          builder: (context, child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                // primaryColor: const Color(0xFF8CE7F1),
                                colorScheme: const ColorScheme.light(
                                  primary: blue,
                                ),
                                buttonTheme: const ButtonThemeData(
                                  textTheme: ButtonTextTheme.primary,
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );
                        if (pickedDate != null) {
                          widget.formControl?.value = pickedDate;
                          if (widget.onDaySelected != null) {
                            widget.onDaySelected?.call(pickedDate);
                          }
                        }
                      }
                    },
                    formControl: widget.formControl,
                  ),
                ],
              ),
            ),
            if (widget.showButton)
              Positioned(
                right: 0,
                bottom: 0,
                child: EditableIconButton(
                  isEdited: isEdited,
                  isEditing: isEditing,
                  onPressed: _onButtonPressed,
                ),
              ),
          ],
        ),
        if (widget.modifiedData != null) ...[
          const SizedBox(
            height: 5,
          ),
          PrimaryText(
            '${l10n.anterior}: ${widget.modifiedData!.original}',
            color: greyText,
          )
        ],
      ],
    );
  }
}
