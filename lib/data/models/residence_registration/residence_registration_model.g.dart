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
      state: $enumDecodeNullable(_$StatusEnumMap, json['state']),
      user: json['user'] == null
          ? null
          : UserResidence.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResidenceRegistrationToJson(
        ResidenceRegistration instance) =>
    <String, dynamic>{
      'observations': instance.observations,
      'residentials': instance.residentials.map((e) => e.toJson()).toList(),
      'userId': instance.userId,
    };

const _$StatusEnumMap = {
  Status.active: 'ACTIVE',
  Status.inactive: 'INACTIVE',
};

UserResidence _$UserResidenceFromJson(Map<String, dynamic> json) =>
    UserResidence(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      identification: json['identification'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$UserResidenceToJson(UserResidence instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'identification': instance.identification,
      'email': instance.email,
      'phone': instance.phone,
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
      'dependents': instance.dependents,
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
  ResidentialDependentRelation.hijoMenorEdad: 'hijoMenorEdad',
  ResidentialDependentRelation.discapacitado: 'discapacitado',
  ResidentialDependentRelation.terceraEdad: 'terceraEdad',
  ResidentialDependentRelation.none: 'none',
};
