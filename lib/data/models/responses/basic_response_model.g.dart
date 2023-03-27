// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseModel<T> _$ResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResponseModel<T>(
      timestamp: json['timestamp'] as String,
      status: json['status'] as int,
      message: json['message'] as String,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$ResponseModelToJson<T>(
  ResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

ResponseModelPagination<T> _$ResponseModelPaginationFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    ResponseModelPagination<T>(
      timestamp: json['timestamp'] as String,
      status: json['status'] as int,
      message: json['message'] as String,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
      totalPages: json['totalPages'] as int?,
      totalElements: json['totalElements'] as int?,
      pageElements: json['pageElements'] as int?,
      pageLimit: json['pageLimit'] as int?,
      pageNumbers: json['pageNumbers'] as int?,
    );

Map<String, dynamic> _$ResponseModelPaginationToJson<T>(
  ResponseModelPagination<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'pageElements': instance.pageElements,
      'pageLimit': instance.pageLimit,
      'pageNumbers': instance.pageNumbers,
    };
