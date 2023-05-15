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
  ResidenceRegistrationRef ref,
) async {
  final api = ref.watch(apiProvider);
  final user = await ref.watch(meProvider.future);
  return (await api.resicenceRegistrationByUser(user.id)).data?.data?.first ??
      const ResidenceRegistration();
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

  @override
  set state(Residential residential) {
    super.state = residential;
  }

  FirstStepResidenceModel getFirstStep() {
    return FirstStepResidenceModel(
      province: state.province,
      canton: state.canton,
      parroquia: state.parroquia,
      backStreet: state.backStreet,
      mainStreet: state.mainStreet,
    );
  }

  SecondStepResidenceModel getSecondStep() {
    return SecondStepResidenceModel(
      housingType: state.housingType,
      tenureHousingTypeAgreement: state.tenureHousingTypeAgreement,
      type: state.type,
      departmentNumber: state.departmentNumber,
      floorNumber: state.floorNumber,
      electricLightMeter: state.electricLightMeter,
      electricalCode: state.electricalCode,
      numberVillaBuilding: state.numberVillaBuilding,
    );
  }

  void updateFirstStep(FirstStepResidenceModel model) {
    state = state.copyWithFromFirstStepResidenceModel(model);
  }

  void updateSecondStep(SecondStepResidenceModel model, {bool isEdit = false}) {
    state = state.copyWithFromSecondStepResidenceModel(model);
  }
}

@riverpod
class ResReg extends _$ResReg {
  @override
  ResidenceRegistration build() {
    final residence = ref.watch(residenceRegistrationProvider);
    return residence.value ?? const ResidenceRegistration();
  }

  void addResidence(Residential residence) {
    state = state.copyWith(residentials: [...state.residentials, residence]);
  }

  void editResidence(Residential residence) {
    final index =
        state.residentials.indexWhere((element) => element == residence);
    if (index != -1) {
      final residences = state.copyWith(
        residentials: List.of(state.residentials)..[index] = residence,
      );
      state = residences;
    }
  }

  void removeResidence(Residential residence) {
    final newResidentials =
        state.residentials.where((r) => r != residence).toList();
    state = state.copyWith(residentials: newResidentials);
  }

  void addDependent(Residential residence, Dependent dependent) {
    final index =
        state.residentials.indexWhere((element) => element == residence);
    if (index != -1) {
      final residences = state.copyWith(
        residentials: List.of(state.residentials)
          ..[index] = residence.copyWith(dependents: [
            ...residence.dependents,
            dependent,
          ]),
      );
      state = residences;
    }
  }

  void editDependent(Residential residence, Dependent dependent) {
    final index =
        state.residentials.indexWhere((element) => element == residence);
    if (index != -1) {
      final residences = state.copyWith(
        residentials: List.of(state.residentials)
          ..[index] = residence.copyWith(
            dependents: residence.dependents
                .map((e) => e == dependent ? dependent : e)
                .toList(),
          ),
      );
      state = residences;
    }
  }

  void removeDependent(Residential residence, Dependent dependent) {
    final index =
        state.residentials.indexWhere((element) => element == residence);
    if (index != -1) {
      final residences = state.copyWith(
        residentials: List.of(state.residentials)
          ..[index] = residence.copyWith(
            dependents: residence.dependents
                .where((d) => d != dependent)
                .toList(),
          ),
      );
      state = residences;
    }
  }

  
}
