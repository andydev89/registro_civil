import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
part 'term_and_use_conditions_model.gform.dart';

@ReactiveFormAnnotation()
class TermAndUseConditionsModel {
  TermAndUseConditionsModel({
    @FormControlAnnotation(validators: [requiredValidator])
        required this.accept,
  });
  final bool accept;
}
