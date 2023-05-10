import 'package:collection/collection.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residence_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_housing_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_tenure_housing_type_agreemente.dart';
import 'package:registro_civil_apk/data/models/commons/location_model.dart';
import 'package:registro_civil_apk/data/models/residence_registration/residence_registration_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'residence_registration_providers.g.dart';

@riverpod
class ResidenceReg extends _$ResidenceReg {
  @override
  ResidenceRegistration build() {
    return ResidenceRegistration();
  }

  void addResidence(Residential residence) {
    state = state.copyWith(
      residentials: [...state.residentials, residence],
    );
  }

  void editResidence(Residential residence) {
    final index = state.residentials.indexWhere(
      (element) => const DeepCollectionEquality().equals(residence, element),
    );
    if (index == -1) return;
    state.residentials[index] = residence;
    state = state.copyWith(
      residentials: [...state.residentials],
    );
  }

  void removeResidence(Residential residence) {
    state = state.copyWith(
      residentials: [
        ...state.residentials.where(
          (element) =>
              !const DeepCollectionEquality().equals(residence, element),
        )
      ],
    );
  }
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
      ref.read(residenceRegProvider.notifier).editResidence(state);
      return;
    }
    ref.read(residenceRegProvider.notifier).addResidence(state);
  }
}
