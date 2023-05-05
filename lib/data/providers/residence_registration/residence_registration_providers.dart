import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'residence_registration_providers.g.dart';

@riverpod
class ResidenceRegistrationP extends _$ResidenceRegistrationP {
  @override
  ResidenceRegistration build() {
    return ResidenceRegistration();
  }
}
