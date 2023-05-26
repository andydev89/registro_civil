import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_geocoding_api/google_geocoding_api.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/commons/gmap_providers.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs_methods.dart';

void selectLocationResidenceREgistration({
  required BuildContext context,
  required FormControl<String> formControl,
  required WidgetRef ref,
}) {
  showMapPickerDialog(
    context,
    automaticClose: true,
    (latLng) async {
      final result = await ref.read(getPlaceFromLatLngProvider(latLng).future);
      var longName = '';
      var pos = 0;
      while (longName.isEmpty && pos < result.length) {
        final route = result.elementAt(pos++).addressComponents.firstWhere(
          (element) => element.types.contains('route'),
          orElse: () => const GoogleGeocodingAddressComponent(),
        );
        longName = route.longName;
      }
        
      formControl.value = longName;
    },
  );
}

Future<void> toResidence(
  BuildContext context, {
  Crud operation = Crud.create,
  int? residenceIndex,
}) =>
    context.navigateTo(
      ResidenceRoute(
        children: [
          FirstStepResidenceRoute(
            operation: operation,
            residenceIndex: residenceIndex,
          ),
        ],
      ),
    );
Future<void> toDependent(
  BuildContext context, {
  Crud operation = Crud.create,
  Dependent? dependent,
  required int residentialIndex,
}) =>
    context.navigateTo(
      DependentRoute(
        children: [
          FirstStepDependentRoute(
            key: UniqueKey(),
            operation: operation,
            dependent: dependent,
            residentialIndex: residentialIndex,
          ),
        ],
      ),
    );
