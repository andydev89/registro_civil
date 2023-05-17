// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residence_registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResidenceRegistration _$$_ResidenceRegistrationFromJson(
        Map<String, dynamic> json) =>
    _$_ResidenceRegistration(
      observations: json['observations'] as String? ?? '',
      residentials: (json['residentials'] as List<dynamic>?)
              ?.map((e) => Residential.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      state: $enumDecodeNullable(_$StatusTypeEnumMap, json['state']) ??
          StatusType.active,
    );

Map<String, dynamic> _$$_ResidenceRegistrationToJson(
        _$_ResidenceRegistration instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'observations': instance.observations,
      'residentials': instance.residentials,
    };

const _$StatusTypeEnumMap = {
  StatusType.active: 'ACTIVE',
  StatusType.inactive: 'INACTIVE',
};

_$_Residential _$$_ResidentialFromJson(Map<String, dynamic> json) =>
    _$_Residential(
      electricLightMeter: json['electricLightMeter'] as bool? ?? false,
      electricalCode: json['electricalCode'] as String? ?? '',
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      canton: LocationModel.fromJson(json['canton'] as Map<String, dynamic>),
      parroquia:
          LocationModel.fromJson(json['parroquia'] as Map<String, dynamic>),
      mainStreet: json['mainStreet'] as String? ?? '',
      backStreet: json['backStreet'] as String? ?? '',
      housingType:
          $enumDecode(_$ResidentialHousingTypeEnumMap, json['housingType']),
      tenureHousingTypeAgreement: $enumDecode(
          _$ResidentialTenureHousingAgreementeTypeEnumMap,
          json['tenureHousingTypeAgreement']),
      numberVillaBuilding: json['numberVillaBuilding'] as String? ?? '',
      floorNumber: json['floorNumber'] as String? ?? '',
      departmentNumber: json['departmentNumber'] as String? ?? '',
      type: $enumDecode(_$ResidenceTypeEnumMap, json['type']),
      dependents: (json['dependents'] as List<dynamic>?)
              ?.map((e) => Dependent.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$_ResidentialToJson(_$_Residential instance) =>
    <String, dynamic>{
      'electricLightMeter': instance.electricLightMeter,
      'electricalCode': instance.electricalCode,
      'province': LocationModel.locationToJson(instance.province),
      'canton': LocationModel.locationToJson(instance.canton),
      'parroquia': LocationModel.locationToJson(instance.parroquia),
      'mainStreet': instance.mainStreet,
      'backStreet': instance.backStreet,
      'housingType': _$ResidentialHousingTypeEnumMap[instance.housingType]!,
      'tenureHousingTypeAgreement':
          _$ResidentialTenureHousingTypeAgreementeEnumMap[
              instance.tenureHousingTypeAgreement]!,
      'numberVillaBuilding': instance.numberVillaBuilding,
      'floorNumber': instance.floorNumber,
      'departmentNumber': instance.departmentNumber,
      'type': _$ResidenceTypeEnumMap[instance.type]!,
      'dependents': instance.dependents,
      'parroquia': Residential._locationToJson(instance.parroquia),
      'province': Residential._locationToJson(instance.province),
      'tenureHousingTypeAgreement':
          ResidentialTenureHousingAgreementeType.toJson(
              instance.tenureHousingTypeAgreement),
      'type': ResidenceType.toJson(instance.type),
    };

const _$ResidentialHousingTypeEnumMap = {
  ResidentialHousingType.apartamento: 'APARTAMENTO',
  ResidentialHousingType.estudio: 'ESTUDIO',
  ResidentialHousingType.duplex: 'DUPLEX',
  ResidentialHousingType.aticos: 'ATICOS',
  ResidentialHousingType.pisos: 'PISOS',
  ResidentialHousingType.bajosConJardin: 'BAJOS_CON_JARDIN',
};

const _$ResidentialTenureHousingAgreementeTypeEnumMap = {
  ResidentialTenureHousingAgreementeType.propiaTotalmentePagada:
      'PROPIA_TOTALMENTE_PAGADA',
  ResidentialTenureHousingAgreementeType.propiaYEnPago: 'PROPIA_ESTA_PAGANDO',
  ResidentialTenureHousingAgreementeType.propia: 'PROPIA',
  ResidentialTenureHousingAgreementeType.prestadaCedida: 'PRESTADA_O_CEDIDA',
  ResidentialTenureHousingAgreementeType.porServicios: 'POR_SERVICIOS',
  ResidentialTenureHousingAgreementeType.arrendada: 'ARRENDADA',
};

const _$ResidenceTypeEnumMap = {
  ResidenceType.principal: 'MAIN_RESIDENTIAL',
  ResidenceType.secundaria: 'BACK_RESIDENTIAL',
};

_$_Dependent _$$_DependentFromJson(Map<String, dynamic> json) => _$_Dependent(
      nuiDependents: json['nuiDependents'] as String,
      relationship: $enumDecode(
          _$ResidentialDependentRelationEnumMap, json['relationship']),
      date: json['date'] as String,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      state: $enumDecodeNullable(_$StatusTypeEnumMap, json['state']) ??
          StatusType.active,
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$$_DependentToJson(_$_Dependent instance) =>
    <String, dynamic>{
      'nuiDependents': instance.nuiDependents,
      'relationship':
          _$ResidentialDependentRelationEnumMap[instance.relationship]!,
      'date': instance.date,
      'name': instance.name,
      'lastname': instance.lastname,
      'state': _$StatusEnumMap[instance.state]!,
          ResidentialDependentRelationType.toJson(instance.relationship),
      'state': Dependent._toJson(instance.state),
    };

const _$ResidentialDependentRelationTypeEnumMap = {
  ResidentialDependentRelationType.hijoMenorEdad: 'HIJO_MENOR_EDAD',
  ResidentialDependentRelationType.discapacitado: 'DISCAPACITADO',
  ResidentialDependentRelationType.terceraEdad: 'TERCERA_EDAD',
  ResidentialDependentRelationType.none: 'NULL',
};

_$_FirstStepResidenceModel _$$_FirstStepResidenceModelFromJson(
        Map<String, dynamic> json) =>
    _$_FirstStepResidenceModel(
      backStreet: json['backStreet'] as String,
      canton: LocationModel.fromJson(json['canton'] as Map<String, dynamic>),
      mainStreet: json['mainStreet'] as String,
      parroquia:
          LocationModel.fromJson(json['parroquia'] as Map<String, dynamic>),
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FirstStepResidenceModelToJson(
        _$_FirstStepResidenceModel instance) =>
    <String, dynamic>{
      'backStreet': instance.backStreet,
      'canton': instance.canton,
      'mainStreet': instance.mainStreet,
      'parroquia': instance.parroquia,
      'province': instance.province,
    };

_$_SecondStepResidenceModel _$$_SecondStepResidenceModelFromJson(
        Map<String, dynamic> json) =>
    _$_SecondStepResidenceModel(
      electricLightMeter: json['electricLightMeter'] as bool,
      electricalCode: json['electricalCode'] as String,
      housingType:
          $enumDecode(_$ResidentialHousingTypeEnumMap, json['housingType']),
      tenureHousingTypeAgreement: $enumDecode(
          _$ResidentialTenureHousingTypeAgreementeEnumMap,
          json['tenureHousingTypeAgreement']),
      numberVillaBuilding: json['numberVillaBuilding'] as String,
      floorNumber: json['floorNumber'] as String,
      departmentNumber: json['departmentNumber'] as String,
      type: $enumDecode(_$ResidenceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_SecondStepResidenceModelToJson(
        _$_SecondStepResidenceModel instance) =>
    <String, dynamic>{
      'electricLightMeter': instance.electricLightMeter,
      'electricalCode': instance.electricalCode,
      'housingType': _$ResidentialHousingTypeEnumMap[instance.housingType]!,
      'tenureHousingTypeAgreement':
          _$ResidentialTenureHousingTypeAgreementeEnumMap[
              instance.tenureHousingTypeAgreement]!,
      'numberVillaBuilding': instance.numberVillaBuilding,
      'floorNumber': instance.floorNumber,
      'departmentNumber': instance.departmentNumber,
      'type': _$ResidenceTypeEnumMap[instance.type]!,
    };

_$_FirstStepResidenceModel _$$_FirstStepResidenceModelFromJson(
        Map<String, dynamic> json) =>
    _$_FirstStepResidenceModel(
      backStreet: json['backStreet'] as String,
      canton: LocationModel.fromJson(json['canton'] as Map<String, dynamic>),
      mainStreet: json['mainStreet'] as String,
      parroquia:
          LocationModel.fromJson(json['parroquia'] as Map<String, dynamic>),
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FirstStepResidenceModelToJson(
        _$_FirstStepResidenceModel instance) =>
    <String, dynamic>{
      'backStreet': instance.backStreet,
      'canton': instance.canton,
      'mainStreet': instance.mainStreet,
      'parroquia': instance.parroquia,
      'province': instance.province,
    };

_$_SecondStepResidenceModel _$$_SecondStepResidenceModelFromJson(
        Map<String, dynamic> json) =>
    _$_SecondStepResidenceModel(
      electricLightMeter: json['electricLightMeter'] as bool,
      electricalCode: json['electricalCode'] as String,
      housingType:
          $enumDecode(_$ResidentialHousingTypeEnumMap, json['housingType']),
      tenureHousingTypeAgreement: $enumDecode(
          _$ResidentialTenureHousingTypeAgreementeEnumMap,
          json['tenureHousingTypeAgreement']),
      numberVillaBuilding: json['numberVillaBuilding'] as String,
      floorNumber: json['floorNumber'] as String,
      departmentNumber: json['departmentNumber'] as String,
      type: $enumDecode(_$ResidenceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_SecondStepResidenceModelToJson(
        _$_SecondStepResidenceModel instance) =>
    <String, dynamic>{
      'electricLightMeter': instance.electricLightMeter,
      'electricalCode': instance.electricalCode,
      'housingType': _$ResidentialHousingTypeEnumMap[instance.housingType]!,
      'tenureHousingTypeAgreement':
          _$ResidentialTenureHousingTypeAgreementeEnumMap[
              instance.tenureHousingTypeAgreement]!,
      'numberVillaBuilding': instance.numberVillaBuilding,
      'floorNumber': instance.floorNumber,
      'departmentNumber': instance.departmentNumber,
      'type': _$ResidenceTypeEnumMap[instance.type]!,
    };
