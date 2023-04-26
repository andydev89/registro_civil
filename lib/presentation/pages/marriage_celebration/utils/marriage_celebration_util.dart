import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/validators/validations_message_enum.dart';

void setErrorFile(FormControl<String>? control) {
  control?.setErrors(
    {ValidationsMessageEnum.seleccionarArchivo.toText: true},
  );
}

void removeErrorFile(FormControl<String>? control) {
  control?.removeError(ValidationsMessageEnum.seleccionarArchivo.toText);
}
