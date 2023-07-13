import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/buttons.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class EditableReactiveTextField<T> extends StatefulWidget {
  EditableReactiveTextField({
    this.formControl,
    this.formControlName,
    this.label,
    this.keyboardType,
    this.controller,
    this.readOnly = false,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.inputFormatters,
    this.light = false,
    this.hintText,
    this.onTap,
    this.setSuffixIconConstraints = false,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
    required this.isEdited,
    required this.onSavePressed,
    required this.onCancelPressed,
    super.key,
  });

  final FormControl<T>? formControl;
  final String? formControlName;
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final FontWeight fontWeight;
  final double fontSize;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool light;
  final String? hintText;
  final bool setSuffixIconConstraints;
  final void Function(FormControl<T>)? onTap;
  final TextCapitalization textCapitalization;
  final int? maxLength;
  bool isEdited;
  final void Function(String? value) onSavePressed;
  final VoidCallback onCancelPressed;

  @override
  State<StatefulWidget> createState() => _EditableReactiveTextFieldState();
}

class _EditableReactiveTextFieldState<T>
    extends State<EditableReactiveTextField> {
  bool isEditing = false;
  String? previousValue;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    previousValue = widget.formControl?.value as String?;
  }

  void _onButtonPressed() {
    if (isEditing) {
      widget.onSavePressed(previousValue);
      widget.isEdited = true;
      isEditing = false;
    } else if (widget.isEdited) {
      widget.onCancelPressed();
      widget.isEdited = false;
    } else {
      isEditing = true;
      focusNode.requestFocus();
    }
    setState((){});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!widget.light && widget.label != null)
          PrimaryText(
            widget.label!,
          ).verticalPadding(5),
        ReactiveTextField(
          focusNode: focusNode,
          maxLength: widget.maxLength,
          formControl: widget.formControl,
          formControlName: widget.formControlName,
          readOnly: widget.readOnly || !isEditing,
          controller: widget.controller,
          onTap: widget.onTap,
          textCapitalization: widget.textCapitalization,
          style: TextStyle(
            color: widget.light ? Colors.white : Colors.black,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
          ),
          cursorColor: widget.light ? Colors.white : Colors.black,
          keyboardType: widget.keyboardType,
          validationMessages: validationMessage(context),
          inputFormatters: widget.inputFormatters,
          decoration: editableInputDecoration(
            light: widget.light,
            hintText: widget.hintText ?? '${l10n.escriba}...',
            suffixIcon: EditableIconButton(
              isEdited: widget.isEdited,
              isEditing: isEditing,
              onPressed: _onButtonPressed,
            ),
            filled: widget.isEdited,
            setSuffixIconConstraints: widget.setSuffixIconConstraints,
            readOnly: widget.readOnly,
          ),
        ),
      ],
    ).verticalPadding(10);
  }
}
