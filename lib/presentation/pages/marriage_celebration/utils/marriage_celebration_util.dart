import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_geocoding_api/google_geocoding_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/binary_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/children_relationship_type.dart';
import 'package:registro_civil_apk/data/enum/marriage_celebration/marital_status_type.dart';
import 'package:registro_civil_apk/data/enum/validators/validations_message_type.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/commons/gmap_providers.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/data/utils/validators.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs_methods.dart';

void setErrorFile(FormControl<String>? control) {
  control?.setErrors(
    {ValidationsMessageType.seleccionarArchivo.toText: true},
  );
}

void removeErrorFile(FormControl<String>? control) {
  control?.removeError(ValidationsMessageType.seleccionarArchivo.toText);
}

void updateWitness({
  required WidgetRef ref,
  required int index,
  required Witness witness,
}) {
  ref.read(witnesssProvider(index).notifier).updateModel(witness);
}

void updatePartner({
  required WidgetRef ref,
  required int index,
  required Partner partner,
}) {
  ref.read(partnersProvider(index).notifier).updateModel(partner);
}

void selectLocation({
  required BuildContext context,
  required OutsideForm formControl,
  required WidgetRef ref,
}) {
  showMapPickerDialog(
    context,
    automaticClose: true,
    (latLng) async {
      final result = await ref.read(getPlaceFromLatLngProvider(latLng).future);
      final route = result.first.addressComponents.firstWhere(
        (element) => element.types.contains('route'),
        orElse: () => const GoogleGeocodingAddressComponent(),
      );
      formControl.latitudeControl.value = latLng.latitude.toString();
      formControl.longitudeControl.value = latLng.longitude.toString();
      formControl.principalStreetControl.value = route.longName;
    },
  );
}

// create WitnessFormGroup a partir de un Witness
FormGroup createWitnessFormGroup(
  Witness witness, {
  List<String> list = const [],
}) {
  return FormGroup({
    'nui': FormControl<String>(
      value: witness.nui,
      validators: [
        requiredValidator,
        ecuadorDniValidator,
        length10Validator,
        (control) => notRepeat(
              control,
              list,
            )
      ],
    ),
    'name': FormControl<String>(
      value: witness.name,
      validators: [requiredValidator, nameValidator],
    ),
  });
}

// create PartnerFormGroup a partir de un Partner
FormGroup createPartnerFormGroup(
  Partner partner, {
  List<String> list = const [],
}) {
  return FormGroup(
    {
      'nui': FormControl<String>(
        value: partner.nui,
        validators: [
          requiredValidator,
          ecuadorDniValidator,
          length10Validator,
          (control) => notRepeat(
                control,
                list,
              )
        ],
      ),
      'name': FormControl<String>(
        value: partner.name,
        validators: [requiredValidator, nameValidator],
      ),
      'maritalStatus': FormControl<MaritalStatusType>(
        value: partner.maritalStatus,
        validators: [requiredValidator],
      ),
      'hasChildren': FormControl<Binary>(
        value: partner.hasChildren,
        validators: [requiredValidator],
      ),
      'childrenRelationship': FormControl<ChildrenRelationShipType>(
        value: partner.childrenRelationship,
      ),
      'conadis': FormControl<bool>(
        value: partner.conadis,
        validators: [requiredValidator],
      ),
      'conadisNumber': FormControl<String>(
        value: partner.conadisNumber,
      ),
      'documents': FormControl<List<Document>>(
        value: partner.documents,
        validators: [requiredValidator],
      ),
    },
    validators: [
      conadisNumberValidatorGroup,
      childrenRelationshipValidatorGroup,
    ],
  );
}
