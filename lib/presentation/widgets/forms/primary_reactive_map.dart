import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/providers/commons/gmap_providers.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';

class PrimaryReactiveMap extends ConsumerWidget {
  const PrimaryReactiveMap({
    super.key,
    required this.formControl,
    required this.label,
  });
  final FormControl<String> formControl;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PrimaryReactiveTextField(
      formControl: formControl,
      label: label,
      suffixIcon: Assets.svg.mapMarker.svg().symmetricPadding(5, 5),
      readOnly: true,
      onTap: (formControl) => showMapPickerDialog(
        context,
        (latLng) async {
          final result =
              await ref.read(getPlaceFromLatLngProvider(latLng).future);
          final route = result.first.formattedAddress;
          formControl.updateValue(route);
        },
      ),
    );
  }
}
