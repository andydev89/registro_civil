import 'package:google_geocoding_api/google_geocoding_api.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gmap_providers.g.dart';

@riverpod
Future<List<GoogleGeocodingResult>> getPlaceFromLatLng(
  GetPlaceFromLatLngRef ref,
  LatLng latLng,
) async {
  final api = GoogleGeocodingApi(
    'AIzaSyAqz_cUzlJ-PB9MMF4stEclAXOD8EFFkBQ',
    isLogged: true,
  );
  final searchResults = await api.reverse(
    '${latLng.latitude},${latLng.longitude}',
    language: 'es',
  );
  return searchResults.results.toList();
}

@riverpod
class Gmap extends _$Gmap {
  Future<void> getPlaceFromLatLng(LatLng latLng) async {
    final result = await ref.watch(getPlaceFromLatLngProvider(latLng).future);
    state = AsyncData(result.first);
  }

  @override
  Future<GoogleGeocodingResult> build() async {
    final result = await ref.watch(
      getPlaceFromLatLngProvider(
        const LatLng(37.42796133580664, -122.085749655962),
      ).future,
    );
    return result.first;
  }
}
