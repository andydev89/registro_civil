import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/relationship_simple_certificate_enum.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';

part 'simple_certificate_model.gform.dart';

@ReactiveFormAnnotation()
class SimpleCertificateFirstStepFamiliarModel {
  SimpleCertificateFirstStepFamiliarModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.nui = '',
    @FormControlAnnotation(validators: [requiredValidator])
        required this.relationship,
    required this.conadisModel,
  });

  final String nui;
  final RelationshipSimpleCertificateEnum relationship;
  final ConadisModel conadisModel;
}

@FormGroupAnnotation<ConadisModel>(validators: [conadisNumberValidatorGroup])
class ConadisModel {
  ConadisModel({
    @FormControlAnnotation<bool>() this.conadis = false,
    @FormControlAnnotation<String>() this.conadisNumber = '',
  });

  final bool conadis;
  final String conadisNumber;
}

@ReactiveFormAnnotation()
class NuiModel {
  NuiModel({
    @FormControlAnnotation(
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
      ],
    )
        this.nui = '',
  });

  final String nui;
}
