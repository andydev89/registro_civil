/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImgGen {
  const $AssetsImgGen();

  $AssetsImgAuthGen get auth => const $AssetsImgAuthGen();
  $AssetsImgGeneralGen get general => const $AssetsImgGeneralGen();
}

class $AssetsImgAuthGen {
  const $AssetsImgAuthGen();

  /// File path: assets/img/auth/anverso.png
  AssetGenImage get anverso =>
      const AssetGenImage('assets/img/auth/anverso.png');

  /// File path: assets/img/auth/background_auth.png
  AssetGenImage get backgroundAuth =>
      const AssetGenImage('assets/img/auth/background_auth.png');

  /// File path: assets/img/auth/cedula.png
  AssetGenImage get cedula => const AssetGenImage('assets/img/auth/cedula.png');

  /// File path: assets/img/auth/faceid.png
  AssetGenImage get faceid => const AssetGenImage('assets/img/auth/faceid.png');

  /// File path: assets/img/auth/fingerpoint.png
  AssetGenImage get fingerpoint =>
      const AssetGenImage('assets/img/auth/fingerpoint.png');

  /// File path: assets/img/auth/reverso.png
  AssetGenImage get reverso =>
      const AssetGenImage('assets/img/auth/reverso.png');

  /// File path: assets/img/auth/rostro_cedula.png
  AssetGenImage get rostroCedula =>
      const AssetGenImage('assets/img/auth/rostro_cedula.png');

  /// File path: assets/img/auth/usuario.jpg
  AssetGenImage get usuario =>
      const AssetGenImage('assets/img/auth/usuario.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        anverso,
        backgroundAuth,
        cedula,
        faceid,
        fingerpoint,
        reverso,
        rostroCedula,
        usuario
      ];
}

class $AssetsImgGeneralGen {
  const $AssetsImgGeneralGen();

  /// File path: assets/img/general/agenda.png
  AssetGenImage get agenda =>
      const AssetGenImage('assets/img/general/agenda.png');

  /// File path: assets/img/general/agendar_turno1.png
  AssetGenImage get agendarTurno1 =>
      const AssetGenImage('assets/img/general/agendar_turno1.png');

  /// File path: assets/img/general/agendar_turno2.png
  AssetGenImage get agendarTurno2 =>
      const AssetGenImage('assets/img/general/agendar_turno2.png');

  /// File path: assets/img/general/agendar_turno3.png
  AssetGenImage get agendarTurno3 =>
      const AssetGenImage('assets/img/general/agendar_turno3.png');

  /// File path: assets/img/general/background_auth.png
  AssetGenImage get backgroundAuth =>
      const AssetGenImage('assets/img/general/background_auth.png');

  /// File path: assets/img/general/cedula.png
  AssetGenImage get cedula =>
      const AssetGenImage('assets/img/general/cedula.png');

  /// File path: assets/img/general/certificado.png
  AssetGenImage get certificado =>
      const AssetGenImage('assets/img/general/certificado.png');

  /// File path: assets/img/general/certificados.png
  AssetGenImage get certificados =>
      const AssetGenImage('assets/img/general/certificados.png');

  /// File path: assets/img/general/checkmark.png
  AssetGenImage get checkmark =>
      const AssetGenImage('assets/img/general/checkmark.png');

  /// File path: assets/img/general/en_linea.png
  AssetGenImage get enLinea =>
      const AssetGenImage('assets/img/general/en_linea.png');

  /// File path: assets/img/general/footer.png
  AssetGenImage get footer =>
      const AssetGenImage('assets/img/general/footer.png');

  /// File path: assets/img/general/huella.png
  AssetGenImage get huella =>
      const AssetGenImage('assets/img/general/huella.png');

  /// File path: assets/img/general/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/img/general/logo.png');

  /// File path: assets/img/general/pasaporte.png
  AssetGenImage get pasaporte =>
      const AssetGenImage('assets/img/general/pasaporte.png');

  /// File path: assets/img/general/qr.png
  AssetGenImage get qr => const AssetGenImage('assets/img/general/qr.png');

  /// File path: assets/img/general/sin_logo.png
  AssetGenImage get sinLogo =>
      const AssetGenImage('assets/img/general/sin_logo.png');

  /// File path: assets/img/general/splash.png
  AssetGenImage get splash =>
      const AssetGenImage('assets/img/general/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        agenda,
        agendarTurno1,
        agendarTurno2,
        agendarTurno3,
        backgroundAuth,
        cedula,
        certificado,
        certificados,
        checkmark,
        enLinea,
        footer,
        huella,
        logo,
        pasaporte,
        qr,
        sinLogo,
        splash
      ];
}

class Assets {
  Assets._();

  static const $AssetsImgGen img = $AssetsImgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
