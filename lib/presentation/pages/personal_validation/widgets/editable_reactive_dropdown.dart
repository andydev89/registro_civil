import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/buttons.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class EditableReactiveDropdown<T> extends StatefulWidget {
  EditableReactiveDropdown({
    this.formControl,
    this.formControlName,
    this.label,
    this.readOnly = false,
    this.light = false,
    this.hintText,
    this.onChanged,
    this.items = const [],
    this.isExpanded = true,
    required this.isEdited,
    required this.onSavePressed,
    required this.onCancelPressed,
    super.key,
  });

  final FormControl<T>? formControl;
  final String? formControlName;
  final String? label;
  final bool readOnly;
  final bool light;
  final String? hintText;
  final void Function(FormControl<T?>)? onChanged;
  final List<Translatable> items;
  final bool isExpanded;
  bool isEdited;
  final void Function(dynamic value) onSavePressed;
  final VoidCallback onCancelPressed;

  @override
  State<StatefulWidget> createState() => _EditableReactiveDropdownState();
}

class _EditableReactiveDropdownState<T>
    extends State<EditableReactiveDropdown> {
  bool isEditing = false;
  dynamic previousValue;
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    previousValue = widget.formControl?.value;
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
        ReactiveDropdownField(
          key: widget.key,
          readOnly: widget.readOnly || !isEditing,
          formControl: widget.formControl,
          formControlName: widget.formControlName,
          borderRadius: BorderRadius.circular(10),
          decoration: editableInputDecoration(
            light: widget.light,
            hintText: widget.hintText ?? '${l10n.escriba}...',
            suffixIcon: EditableIconButton(
              isEdited: widget.isEdited,
              isEditing: isEditing,
              onPressed: _onButtonPressed,
            ),
            filled: widget.isEdited,
            readOnly: widget.readOnly,
          ),
          isExpanded: widget.isExpanded,
          hint: Text('${l10n.seleccione}...',
            style: TextStyle(
              color: widget.readOnly
                  ? Colors.grey
                  : widget.light
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          onChanged: widget.onChanged,
          selectedItemBuilder: (context) => widget.items
              .map(
                (e) => PrimaryText(
              e.translate(context),
              textAlign: TextAlign.start,
              overFlow: TextOverflow.ellipsis,
              color: widget.light ? Colors.white : primaryColor,
              // maxLines: null,
            ),
          )
              .toList(),
          items: widget.items
              .map(
                (e) => DropdownMenuItem<T>(
              value: e as T,
              child: PrimaryText(
                e.translate(context),
                textAlign: TextAlign.start,
                overFlow: TextOverflow.ellipsis,
              ),
            ),
          )
              .toList(),
          validationMessages: validationMessage(context),
        ),
      ],
    ).verticalPadding(10);
  }
}
