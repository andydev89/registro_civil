import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum IconoBotonEnum {
  faceID,
  huella,
  cedula,
  scanFace,
}

extension IconoBotonExtension on IconoBotonEnum {
  SvgPicture image({
    double height = 30,
    double width = 30,
  }) {
    if (this == IconoBotonEnum.cedula) {
      return Assets.svg.cedula.svg(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    if (this == IconoBotonEnum.faceID) {
      return Assets.svg.faceId.svg(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    if (this == IconoBotonEnum.huella) {
      return Assets.svg.fingerprint.svg(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    // if (this == IconoBotonEnum.scanFace) {
    //   return Assets.svg.user.svg(
    //     height: height,
    //     width: width,
    //     fit: BoxFit.cover,
    //   );
    // }
    return Assets.svg.user.svg(
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
