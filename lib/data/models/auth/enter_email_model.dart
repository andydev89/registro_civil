import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'enter_email_model.gform.dart';

@ReactiveFormAnnotation()
class EnterEmailModel {
  EnterEmailModel({
    @FormControlAnnotation(validators: [
      requiredValidator,
      emailValidator,
    ])
        this.email = '',
  });

  final String email;
}
