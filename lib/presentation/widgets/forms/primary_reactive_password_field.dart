import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/secondary_icon_button.dart';
import 'package:registro_civil_apk/presentation/widgets/decorations/input_decoration.dart';

class PrimaryReactivePasswordField<T> extends HookWidget {
  const PrimaryReactivePasswordField({
    required this.formControl,
    this.label,
    this.keyboardType,
    this.readOnly = false,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.inputFormatters,
    this.prefixIcon,
    this.ligth = false,
    this.hintText,
    this.onTap,
    this.setSuffixIconConstraints = false,
    super.key,
  });
  final FormControl<T>? formControl;
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final bool readOnly;
  final FontWeight fontWeight;
  final double fontSize;
  final TextInputType? keyboardType;
  final bool ligth;
  final String? hintText;
  final bool setSuffixIconConstraints;
  final void Function(FormControl<T>)? onTap;

  @override
  Widget build(BuildContext context) {
    final newPasswordController = useTextEditingController();
    final showPassword = useState(false);
    void toggleShowPassword() {
      showPassword.value = !showPassword.value;
    }

    final l10n = context.l10n;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!ligth && label != null)
          Text(
            label!,
            style: const TextStyle(fontSize: 15),
          ).verticalPadding(5),
        ReactiveTextField<T>(
          formControl: formControl,
          readOnly: readOnly,
          obscureText: !showPassword.value,
          controller: newPasswordController,
          onTap: onTap,
          style: TextStyle(
            color: ligth ? Colors.white : Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          cursorColor: ligth ? Colors.white : Colors.black,
          keyboardType: keyboardType,
          validationMessages: {
            ValidationMessage.required: (error) => l10n.campoReq,
            ValidationMessage.email: (error) => l10n.intrudcirCorrVal,
            ValidationMessage.mustMatch: (error) => l10n.passwordCoi,
            'invalidDni': (error) => l10n.intrducirNumIdeVal,
            'length10Error': (error) => l10n.introducirNumNDig(10),
            'invalidProvinceCode': (error) => l10n.introducirCodProVal,
            'invalidPassword': (error) => l10n.password8Car,
            'invalidPhoneNumber': (error) => l10n.intrudcirNumTelVal,
            'length6Error': (error) => l10n.introducirNumNDig(6),
            'length11Error': (error) => l10n.introducirNumNDig(11),
          },
          inputFormatters: inputFormatters,
          decoration: primaryInputDecoration(
            light: ligth,
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon:  SecondaryIconButton(
                      onPressed: toggleShowPassword,
                      icon: showPassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
            setSuffixIconConstraints: setSuffixIconConstraints,
          ),
        ),
      ],
    ).verticalPadding(10);
  }
}
