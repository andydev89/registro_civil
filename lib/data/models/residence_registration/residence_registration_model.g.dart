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
    );

Map<String, dynamic> _$ResidenceRegistrationToJson(
        ResidenceRegistration instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'observations': instance.observations,
      'residentials': instance.residentials.map((e) => e.toJson()).toList(),
    };

Residential _$ResidentialFromJson(Map<String, dynamic> json) => Residential(
      electricLightMeter: json['electricLightMeter'] as bool,
      electricalCode: json['electricalCode'] as String,
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      canton: LocationModel.fromJson(json['canton'] as Map<String, dynamic>),
      parroquia:
          LocationModel.fromJson(json['parroquia'] as Map<String, dynamic>),
      mainStreet: json['mainStreet'] as String,
      backStreet: json['backStreet'] as String,
      housingType:
          $enumDecode(_$ResidentialHousingTypeEnumMap, json['housingType']),
      tenureHousingTypeAgreement: $enumDecode(
          _$ResidentialTenureHousingTypeAgreementeEnumMap,
          json['tenureHousingTypeAgreement']),
      numberVillaBuilding: json['numberVillaBuilding'] as String,
      floorNumber: json['floorNumber'] as String,
      departmentNumber: json['departmentNumber'] as String,
      type: $enumDecode(_$ResidenceTypeEnumMap, json['type']),
      dependents: (json['dependents'] as List<dynamic>)
          .map((e) => Dependent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResidentialToJson(Residential instance) =>
    <String, dynamic>{
      'electricLightMeter': instance.electricLightMeter,
      'electricalCode': instance.electricalCode,
      'province': Residential._locationToJson(instance.province),
      'canton': Residential._locationToJson(instance.canton),
      'parroquia': Residential._locationToJson(instance.parroquia),
      'mainStreet': instance.mainStreet,
      'backStreet': instance.backStreet,
      'housingType': ResidentialHousingType.toJson(instance.housingType),
      'tenureHousingTypeAgreement':
          ResidentialTenureHousingTypeAgreemente.toJson(
              instance.tenureHousingTypeAgreement),
      'numberVillaBuilding': instance.numberVillaBuilding,
      'floorNumber': instance.floorNumber,
      'departmentNumber': instance.departmentNumber,
      'type': ResidenceType.toJson(instance.type),
      'dependents': instance.dependents,
    };

const _$ResidentialHousingTypeEnumMap = {
  ResidentialHousingType.apartamento: 'apartamento',
  ResidentialHousingType.estudio: 'estudio',
  ResidentialHousingType.duplex: 'duplex',
  ResidentialHousingType.aticos: 'aticos',
  ResidentialHousingType.pisos: 'pisos',
  ResidentialHousingType.bajosConJardin: 'bajosConJardin',
};

const _$ResidentialTenureHousingTypeAgreementeEnumMap = {
  ResidentialTenureHousingTypeAgreemente.propiaTotalmentePagada:
      'propiaTotalmentePagada',
  ResidentialTenureHousingTypeAgreemente.propiaYEnPago: 'propiaYEnPago',
  ResidentialTenureHousingTypeAgreemente.propia: 'propia',
  ResidentialTenureHousingTypeAgreemente.prestadaCedida: 'prestadaCedida',
  ResidentialTenureHousingTypeAgreemente.porServicios: 'porServicios',
  ResidentialTenureHousingTypeAgreemente.arrendada: 'arrendada',
};

const _$ResidenceTypeEnumMap = {
  ResidenceType.principal: 'principal',
  ResidenceType.secundaria: 'secundaria',
};

Dependent _$DependentFromJson(Map<String, dynamic> json) => Dependent(
      nuiDependents: json['nuiDependents'] as String,
      relationship: $enumDecode(
          _$ResidentialDependentRelationEnumMap, json['relationship']),
      date: json['date'] as String,
      name: json['name'] as String,
      lastname: json['lastname'] as String,
      state: $enumDecode(_$StatusEnumMap, json['state']),
    );

Map<String, dynamic> _$DependentToJson(Dependent instance) => <String, dynamic>{
      'nuiDependents': instance.nuiDependents,
      'relationship':
          ResidentialDependentRelation.toJson(instance.relationship),
      'date': instance.date,
      'name': instance.name,
      'lastname': instance.lastname,
      'state': Dependent._toJson(instance.state),
    };

const _$ResidentialDependentRelationEnumMap = {
  ResidentialDependentRelation.hijoMenorEdad: 'hijoMenorEdad',
  ResidentialDependentRelation.discapacitado: 'discapacitado',
  ResidentialDependentRelation.terceraEdad: 'terceraEdad',
  ResidentialDependentRelation.none: 'none',
};

const _$StatusEnumMap = {
  Status.active: 'ACTIVE',
  Status.inactive: 'INACTIVE',
};
