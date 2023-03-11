import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum IconoBotonEnum {
  faceID,
  huella,
  cedula,
  scanFace,
}

extension IconoBotonExtension on IconoBotonEnum {
  Image image({
    double height = 30,
    double width = 30,
  }) {
    if (this == IconoBotonEnum.cedula) {
      return Assets.img.auth.cedula.image(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    if (this == IconoBotonEnum.faceID) {
      return Assets.img.auth.faceid.image(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    if (this == IconoBotonEnum.huella) {
      return Assets.img.auth.fingerpoint.image(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    if (this == IconoBotonEnum.scanFace) {
      return Assets.img.auth.usuario.image(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    return Assets.img.general.logo.image(
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
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
}
