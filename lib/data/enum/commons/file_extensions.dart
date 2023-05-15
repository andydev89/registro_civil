import 'package:registro_civil_apk/core/gen/assets.gen.dart';

enum FileExtension {
  pdf('pdf'),
  jpeg('jpeg'),
  jpg('jpg');

  const FileExtension(this.value);
  final String value;

  AssetGenImage get image {
    switch (this) {
      case FileExtension.pdf:
        return Assets.png.pdf;
      case FileExtension.jpeg:
        // TODO(alejandro): poner una imagen de una foto
        return Assets.png.validacionDocumentos;
      case FileExtension.jpg:
        // TODO(alejandro): poner una imagen de una foto
        return Assets.png.validacionDocumentos;
    }
  }
}
