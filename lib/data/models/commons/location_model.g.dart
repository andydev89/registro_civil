// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocationModel _$$_LocationModelFromJson(Map<String, dynamic> json) =>
    _$_LocationModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_LocationModelToJson(_$_LocationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
    };

_$_LocationAgencyModel _$$_LocationAgencyModelFromJson(
        Map<String, dynamic> json) =>
    _$_LocationAgencyModel(
      agencyId: json['agencyId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_LocationAgencyModelToJson(
        _$_LocationAgencyModel instance) =>
    <String, dynamic>{
      'agencyId': instance.agencyId,
      'name': instance.name,
    };
