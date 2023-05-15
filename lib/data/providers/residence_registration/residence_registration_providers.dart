import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/commons/crud_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residence_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_housing_type.dart';
import 'package:registro_civil_apk/data/enum/residence_registration/residential_tenure_housing_type_agreemente.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
import 'package:registro_civil_apk/data/models/commons/document_model.dart';
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
  return (await api.resicenceRegistrationByUser(user.id)).data?.first ??
      ResidenceRegistration();
}

@riverpod
class ResidenceRegistrationPreview extends _$ResidenceRegistrationPreview {
  @override
  DocumentModel build() {
    return DocumentModel(document: '');
  }

  Future<Result<String, StatusCode>> certificate() async {
    final api = ref.watch(apiProvider);
    final user = await ref.watch(meProvider.future);
    final result = await api.residenceRegistrationPreviewByUser(user.id);
    if (result.success) {
      return Result.ok(result.data!.document);
    }
    return Result.err(result.status);
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
    return residence.value ?? ResidenceRegistration();
  }

  void addResidence(Residential residence) {
    state = state.copyWith(residentials: [...state.residentials, residence]);
  }

  void editResidence(Residential residence) {
    final index = state.residentials
        .indexWhere((element) => element.myId == residence.myId);
    if (index != -1) {
      state = state.copyWith(
        residentials: List.of(state.residentials)..[index] = residence,
      );
    }
  }

  void removeResidence(Residential residence) {
    final newResidentials =
        state.residentials.where((r) => r.myId != residence.myId).toList();
    state = state.copyWith(residentials: newResidentials);
  }

  void addDependent(String residenceId, Dependent dependent) {
    final index =
        state.residentials.indexWhere((element) => element.myId == residenceId);
    if (index != -1) {
      state = state.copyWith(
        residentials: List.of(state.residentials)
          ..[index] = state.residentials[index].copyWith(
            dependents: [...state.residentials[index].dependents, dependent],
          ),
      );
    }
  }

  void removeDependent(String residenceId, Dependent dependent) {
    final index =
        state.residentials.indexWhere((element) => element.myId == residenceId);
    if (index != -1) {
      final newDependents = state.residentials[index].dependents
          .where((d) => d.nuiDependents != dependent.nuiDependents)
          .toList();
      state = state.copyWith(
        residentials: List.of(state.residentials)
          ..[index] = state.residentials[index].copyWith(
            dependents: newDependents,
          ),
      );
    }
  }

  Residential residentialFromId(String residenceId) {
    final index =
        state.residentials.indexWhere((element) => element.myId == residenceId);
    return state.residentials[index];
  }

  List<String> dependentsFromResidence(
    String residenceId, {
    Dependent? actual,
  }) {
    final index =
        state.residentials.indexWhere((element) => element.myId == residenceId);
    if (index != -1) {
      final dependents = state.residentials[index].dependents;
      if (actual != null) {
        return dependents
            .where((element) => element.nuiDependents != actual.nuiDependents)
            .map((e) => e.nuiDependents)
            .toList();
      }
      return dependents.map((e) => e.nuiDependents).toList();
    }
    return [];
  }

  bool existResidence(
    Residential actual,
    Crud operation,
  ) {
    final index = state.residentials.indexWhere(
      (element) => element.reisdentialId == actual.reisdentialId,
    );
    if (operation == Crud.create) {
      return index != -1;
    } else {
      return index != -1 &&
          state.residentials[index].reisdentialId != actual.reisdentialId;
    }
  }

  Future<Result<bool, StatusCode>> save(ResidenceRegistration residence) async {
    final api = ref.watch(apiProvider);
    final user = await ref.watch(meProvider.future);
    final result = await api.residenceRegistration(
      residence.copyWith(userId: user.id),
    );
    if (result.success) {
      return const Result.ok(true);
    }
    return Result.err(result.status);
  }
}
