// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgencyModel _$AgencyModelFromJson(Map<String, dynamic> json) => AgencyModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      country: LocationModel.fromJson(json['country'] as Map<String, dynamic>),
      province:
          LocationModel.fromJson(json['province'] as Map<String, dynamic>),
      canton: LocationModel.fromJson(json['canton'] as Map<String, dynamic>),
      parroquia:
          LocationModel.fromJson(json['parroquia'] as Map<String, dynamic>),
      region: json['region'] as String,
      state: json['state'] as String,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$AgencyModelToJson(AgencyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'country': instance.country,
      'province': instance.province,
      'canton': instance.canton,
      'parroquia': instance.parroquia,
      'region': instance.region,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'state': instance.state,
    };
