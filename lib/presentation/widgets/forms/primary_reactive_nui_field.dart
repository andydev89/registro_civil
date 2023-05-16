import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class PrimaryReactiveNuiField<T> extends ConsumerWidget {
  const PrimaryReactiveNuiField({
    this.formControl,
    this.formControlName,
    this.label,
    this.controller,
    this.readOnly = false,
    this.obscureText = false,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.prefixIcon,
    this.suffixIcon,
    this.ligth = false,
    this.hintText,
    this.onTap,
    this.setSuffixIconConstraints = false,
    super.key,
    this.init = false,
  });
  final FormControl<T>? formControl;
  final String? formControlName;
  final String? label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final bool obscureText;
  final FontWeight fontWeight;
  final double fontSize;
  final TextEditingController? controller;
  final bool ligth;
  final String? hintText;
  final bool setSuffixIconConstraints;
  final void Function(FormControl<T>)? onTap;
  final bool init;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (init) {
      final nui = ref.watch(meProvider).asData?.value.identification ?? '';
      formControl?.value = nui as T;
    }
    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!ligth && label != null)
          PrimaryText(
            label!,
          ).verticalPadding(5),
        ReactiveTextField<T>(
          key: key,
          formControl: formControl,
          formControlName: formControlName,
          readOnly: readOnly,
          obscureText: obscureText,
          controller: controller,
          onTap: onTap,
          style: TextStyle(
            color: ligth ? Colors.white : Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          cursorColor: ligth ? Colors.white : Colors.black,
          keyboardType: TextInputType.number,
          validationMessages: validationMessage(context),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          decoration: primaryInputDecoration(
            light: ligth,
            hintText: hintText ?? '${l10n.escriba}...',
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            setSuffixIconConstraints: setSuffixIconConstraints,
          ),
        ),
      ],
    ).verticalPadding(10);
  }
}
