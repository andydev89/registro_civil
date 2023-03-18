import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';

class PrimaryReactiveFormField<T> extends StatelessWidget {
  const PrimaryReactiveFormField({
    required this.formControl,
    required this.title,
    this.keyboardType,
    this.controller,
    this.readOnly = false,
    this.obscureText = false,
    this.fontWeight = FontWeight.normal,
    this.fontSize = fontSizeDefault,
    this.inputFormatters,
    this.colorPrefixIcon,
    this.prefixIcon,
    this.colorTitle,
    this.suffixIcon,
    super.key,
  });
  final FormControl<T>? formControl;
  final String title;
  final List<TextInputFormatter>? inputFormatters;
  final IconData? prefixIcon;
  final Color? colorPrefixIcon;
  final Widget? suffixIcon;
  final bool readOnly;
  final Color? colorTitle;
  final bool obscureText;
  final FontWeight fontWeight;
  final double fontSize;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField<T>(
      formControl: formControl,
      readOnly: readOnly,
      obscureText: obscureText,
      controller: controller,
      style: TextStyle(
        color: colorTitle ?? Colors.white,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      cursorColor: colorTitle ?? Theme.of(context).primaryColor,
      keyboardType: keyboardType,
      validationMessages: {
        ValidationMessage.required: (error) => 'Este campo es requerido',
        ValidationMessage.email: (error) => 'Debe introducir un correo válido',
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
      decoration: decoracionAuth(
        texto: title,
        colorLabel: colorTitle ?? Colors.white,
        iconoPrefix: prefixIcon,
        colorPrefixIcon: colorPrefixIcon ?? Theme.of(context).primaryColor,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
