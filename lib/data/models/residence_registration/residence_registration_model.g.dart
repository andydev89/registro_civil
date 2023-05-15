// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'residence_registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResidenceRegistration _$ResidenceRegistrationFromJson(
        Map<String, dynamic> json) =>
    ResidenceRegistration(
      userId: json['userId'] as String? ?? '',
      observations: json['observations'] as String? ?? '',
      residentials: (json['residentials'] as List<dynamic>?)
              ?.map((e) => Residential.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      state:
          $enumDecodeNullable(_$StatusEnumMap, json['state']) ?? Status.active,
    );

Map<String, dynamic> _$ResidenceRegistrationToJson(
        ResidenceRegistration instance) =>
    <String, dynamic>{
      'observations': instance.observations,
      'residentials': instance.residentials.map((e) => e.toJson()).toList(),
    };

const _$StatusEnumMap = {
  Status.active: 'ACTIVE',
  Status.inactive: 'INACTIVE',
};

Residential _$ResidentialFromJson(Map<String, dynamic> json) => Residential(
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
          _$ResidentialTenureHousingTypeAgreementeEnumMap,
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

Map<String, dynamic> _$ResidentialToJson(Residential instance) =>
    <String, dynamic>{
      'electricalCode': instance.electricalCode,
      'electricLightMeter': instance.electricLightMeter,
      'canton': Residential._locationToJson(instance.canton),
      'departmentNumber': instance.departmentNumber,
      'dependents': instance.dependents.map((e) => e.toJson()).toList(),
      'floorNumber': instance.floorNumber,
      'housingType': ResidentialHousingType.toJson(instance.housingType),
      'mainStreet': instance.mainStreet,
      'backStreet': instance.backStreet,
      'numberVillaBuilding': instance.numberVillaBuilding,
      'parroquia': Residential._locationToJson(instance.parroquia),
      'province': Residential._locationToJson(instance.province),
      'tenureHousingTypeAgreement':
          ResidentialTenureHousingTypeAgreemente.toJson(
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

const _$ResidentialTenureHousingTypeAgreementeEnumMap = {
  ResidentialTenureHousingTypeAgreemente.propiaTotalmentePagada:
      'PROPIA_TOTALMENTE_PAGADA',
  ResidentialTenureHousingTypeAgreemente.propiaYEnPago: 'PROPIA_ESTA_PAGANDO',
  ResidentialTenureHousingTypeAgreemente.propia: 'PROPIA',
  ResidentialTenureHousingTypeAgreemente.prestadaCedida: 'PRESTADA_O_CEDIDA',
  ResidentialTenureHousingTypeAgreemente.porServicios: 'POR_SERVICIOS',
  ResidentialTenureHousingTypeAgreemente.arrendada: 'ARRENDADA',
};

const _$ResidenceTypeEnumMap = {
  ResidenceType.principal: 'MAIN_RESIDENTIAL',
  ResidenceType.secundaria: 'BACK_RESIDENTIAL',
};

Dependent _$DependentFromJson(Map<String, dynamic> json) => Dependent(
      nuiDependents: json['nuiDependents'] as String,
      relationship: $enumDecode(
          _$ResidentialDependentRelationEnumMap, json['relationship'],
          unknownValue: ResidentialDependentRelation.none),
      date: json['date'] as String,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      state: $enumDecode(_$StatusEnumMap, json['state']),
      id: json['id'] as String? ?? '',
    );

Map<String, dynamic> _$DependentToJson(Dependent instance) => <String, dynamic>{
      'date': instance.date,
      'lastname': instance.lastname,
      'name': instance.name,
      'nuiDependents': instance.nuiDependents,
      'relationship':
          ResidentialDependentRelation.toJson(instance.relationship),
      'state': Dependent._toJson(instance.state),
    };

const _$ResidentialDependentRelationEnumMap = {
  ResidentialDependentRelation.hijoMenorEdad: 'HIJO_MENOR_EDAD',
  ResidentialDependentRelation.discapacitado: 'DISCAPACITADO',
  ResidentialDependentRelation.terceraEdad: 'TERCERA_EDAD',
  ResidentialDependentRelation.none: 'NULL',
};
