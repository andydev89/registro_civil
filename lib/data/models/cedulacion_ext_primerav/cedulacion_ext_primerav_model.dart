import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

final visaform = FormGroup({
  'visa': FormControl<String>(
    validators: [
      Validators.composeOR([
        Validators.email,
        // Validators.pattern(phonePattern),
      ])
    ],
  ),
});
