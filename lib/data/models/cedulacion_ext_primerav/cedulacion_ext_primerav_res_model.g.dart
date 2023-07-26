// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cedulacion_ext_primerav_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CedulacionExtpVResModel _$$_CedulacionExtpVResModelFromJson(
        Map<String, dynamic> json) =>
    _$_CedulacionExtpVResModel(
      timestamp: json['timestamp'] as String?,
      status: json['status'] as int?,
      message: json['message'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CedulacionExtpVResModelToJson(
        _$_CedulacionExtpVResModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      visa: json['visa'] as String?,
      transactionCode: json['transactionCode'] as int?,
      command: json['command'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'visa': instance.visa,
      'transactionCode': instance.transactionCode,
      'command': instance.command,
    };
