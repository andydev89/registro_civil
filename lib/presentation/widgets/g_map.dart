import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends HookWidget {
  const GMap({
    super.key,
    this.onPicked,
  });
  final void Function(LatLng latLng)? onPicked;

  @override
  Widget build(BuildContext context) {
    final markers = useState(<Marker>[]);
    return GoogleMap(
      initialCameraPosition: const CameraPosition(
        // TODO(alejandro): poner la ubicacion del dispositivo
        target: LatLng(-0.16579075086538383, -78.46794853365809),
        zoom: 16,
      ),
      markers: Set.from(markers.value),
      onTap: (LatLng latLng) {
        markers.value = [
          Marker(
            markerId: const MarkerId(
              'selectedMark',
            ),
            position: latLng,
          ),
        ];
        onPicked?.call(latLng);
      },
    );
  }
}
