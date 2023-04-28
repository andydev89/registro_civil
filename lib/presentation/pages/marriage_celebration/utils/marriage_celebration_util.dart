import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_geocoding_api/google_geocoding_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/validators/validations_message_enum.dart';
import 'package:registro_civil_apk/data/models/marriage_celebration/marriage_celebration_model.dart';
import 'package:registro_civil_apk/data/providers/commons/gmap_providers.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';

void setErrorFile(FormControl<String>? control) {
  control?.setErrors(
    {ValidationsMessageEnum.seleccionarArchivo.toText: true},
  );
}

void removeErrorFile(FormControl<String>? control) {
  control?.removeError(ValidationsMessageEnum.seleccionarArchivo.toText);
}

void updateWitness({
  required WidgetRef ref,
  required int index,
  required Witness witness,
}) {
  if (index == 0) {
    ref.read(witness1Provider.notifier).state = witness;
  } else {
    ref.read(witness2Provider.notifier).state = witness;
  }
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
