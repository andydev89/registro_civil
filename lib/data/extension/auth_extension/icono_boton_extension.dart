import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

extension IconoBotonExtension on IconoBotonEnum {
  String get url {
    if (this == IconoBotonEnum.cedula) {
      return 'assets/img/auth/cedula.png';
    }
    if (this == IconoBotonEnum.faceID) {
      return 'assets/img/auth/faceid.png';
    }
    if (this == IconoBotonEnum.huella) {
      return 'assets/img/auth/fingerpoint.png';
    }
    return '';
  }

  String label(BuildContext context) {
    final l10n = context.l10n;
    if (this == IconoBotonEnum.cedula) {
      return l10n.cedula;
    }
    if (this == IconoBotonEnum.faceID) {
      return l10n.facID;
    }
    if (this == IconoBotonEnum.huella) {
      return l10n.huella;
    }
    return '';
  }

  String get ruta {
    if (this == IconoBotonEnum.cedula) {
      return 'login_cedula';
    }
    if (this == IconoBotonEnum.faceID) {
      return 'login_face_id';
    }
    if (this == IconoBotonEnum.huella) {
      return 'login_huella';
    }
    return '';
  }
}
