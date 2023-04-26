import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';

enum FileExtensions {
  pdf('pdf');

  const FileExtensions(this.value);
  final String value;

  AssetGenImage get image {
    switch (this) {
      case FileExtensions.pdf:
        return Assets.png.pdf;
    }
  }
}
