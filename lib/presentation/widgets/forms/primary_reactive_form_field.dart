import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/const/const.dart';

class PrimaryReactiveFormField<T> extends StatelessWidget {
  const PrimaryReactiveFormField({
    required this.formControl,
    this.label,
    this.keyboardType,
    this.controller,
    this.readOnly = false,
    this.obscureText = false,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.inputFormatters,
    this.colorPrefixIcon,
    this.prefixIcon,
    this.suffixIcon,
    this.ligthTheme = true,
    this.hintText,
    this.onTap,
    super.key,
  });
  final FormControl<T>? formControl;
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final IconData? prefixIcon;
  final Color? colorPrefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final bool obscureText;
  final FontWeight fontWeight;
  final double fontSize;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool ligthTheme;
  final String? hintText;
  final void Function(FormControl<T>)? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (!ligthTheme && label != null)
          Text(
            label!,
            style: const TextStyle(fontSize: 15),
          ).verticalPadding(5),
        ReactiveTextField<T>(
          formControl: formControl,
          readOnly: readOnly,
          obscureText: obscureText,
          controller: controller,
          onTap: onTap,
          style: TextStyle(
            color: ligthTheme ? Colors.white : Colors.black,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          cursorColor: ligthTheme ? Colors.white : Colors.black,
          keyboardType: keyboardType,
          validationMessages: {
            ValidationMessage.required: (error) => 'Este campo es requerido',
            ValidationMessage.email: (error) =>
                'Debe introducir un correo válido',
            ValidationMessage.mustMatch: (error) =>
                'Las contraseñas deben coincidir',
            'invalidDni': (error) =>
                'Debe introducir un número de identidad válido',
            'lengthError': (error) => 'Debe introducir un número de 10 dígitos',
            'invalidProvinceCode': (error) =>
                'Debe introducir un código de provincia válido',
            'invalidPassword': (error) => 'La contraseña debe tener al menos 8 '
                'caracteres, una mayúscula, una minúscula, '
                'número y un caracter especial',
          },
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            suffixIcon: suffixIcon?.horizontalPadding(10),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20),
            hintText: hintText,
            hintStyle: TextStyle(
              color: ligthTheme ? Colors.white : Colors.black,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: ligthTheme ? Colors.white : Colors.black,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: ligthTheme ? Colors.white : Colors.black,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
        ),
      ],
    );
  }
}
