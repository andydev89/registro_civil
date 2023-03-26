import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'code_model.gform.dart';

@ReactiveFormAnnotation()
class CodeModel {
  CodeModel({
    @FormControlAnnotation(validators: [requiredValidator]) required this.code,
  });

  final String code;
}
