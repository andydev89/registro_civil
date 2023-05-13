import 'package:collection/collection.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residence_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_housing_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_tenure_housing_type_agreemente.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/data/providers/dio_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'residence_registration_providers.g.dart';

@riverpod
Future<ResidenceRegistration> residenceRegistration(
    ResidenceRegistrationRef ref) async {
  final api = ref.watch(apiProvider);
  final user = await ref.watch(meProvider.future);
  return (await api.resicenceRegistrationByUser(user.id)).data!.data!.first;
}

@riverpod
class ResidentialP extends _$ResidentialP {
  @override
  Residential build() {
    return Residential(
      province: LocationModel(id: 'id', name: 'name', type: 'type'),
      canton: LocationModel(id: 'id', name: 'name', type: 'type'),
      parroquia: LocationModel(id: 'id', name: 'name', type: 'type'),
      housingType: ResidentialHousingType.apartamento,
      tenureHousingTypeAgreement:
          ResidentialTenureHousingTypeAgreemente.arrendada,
      type: ResidenceType.principal,
    );
  }

  void updateFirstStep(FirstStepResidenceModel model) {
    state = state.copyWithFromFirstStepResidenceModel(model);
  }

  void updateSecondStep(SecondStepResidenceModel model, {bool isEdit = false}) {
    state = state.copyWithFromSecondStepResidenceModel(model);
    if (isEdit) {
      ref.read(resRegProvider.notifier).editResidence(state);
      return;
    }
    ref.read(resRegProvider.notifier).addResidence(state);
  }
}

@riverpod
class ResReg extends _$ResReg {
  @override
  ResidenceRegistration build() {
    final residence = ref.watch(residenceRegistrationProvider);
    return residence.value ?? ResidenceRegistration();
  }

  void addResidence(Residential residence) {
    state.residentials.add(residence);
    state = state.copyWith();
  }

  void editResidence(Residential residence) {
    final index =
        state.residentials.indexWhere((element) => element.id == residence.id);
    if (index != -1) {
      state.residentials[index] = residence;
      state = state.copyWith();
    }
  }

  void removeResidence(Residential residence) {
    state.residentials.removeWhere((element) => element.id == residence.id);
    state = state.copyWith();
  }
}
