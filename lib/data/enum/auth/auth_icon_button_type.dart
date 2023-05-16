import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum AuthIconButtonType {
  faceID,
  fingerPrint,
  cedula,
  scanFace,
}

extension AuthIconButtonTypeExtension on AuthIconButtonType {
  SvgPicture image({
    double height = 30,
    double width = 30,
  }) {
    if (this == AuthIconButtonType.cedula) {
      return Assets.svg.cedula.svg(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    if (this == AuthIconButtonType.faceID) {
      return Assets.svg.faceId.svg(
        height: height,
        width: width,
        fit: BoxFit.cover,
      );
    }
    if (this == AuthIconButtonType.fingerPrint) {
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
    if (this == AuthIconButtonType.cedula) {
      return l10n.cedula;
    }
    if (this == AuthIconButtonType.faceID) {
      return l10n.facID;
    }
    if (this == AuthIconButtonType.fingerPrint) {
      return l10n.huella;
    }
    return '';
  }
}
