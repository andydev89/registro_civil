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
      status: $enumDecode(_$StatusCodeEnumMap, json['status']),
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
      'status': _$StatusCodeEnumMap[instance.status]!,
      'message': instance.message,
      'errors': instance.errors,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

const _$StatusCodeEnumMap = {
  StatusCode.s200: 200,
  StatusCode.s201: 201,
  StatusCode.s202: 202,
  StatusCode.s400: 400,
  StatusCode.s401: 401,
  StatusCode.s403: 403,
  StatusCode.s404: 404,
  StatusCode.s405: 405,
  StatusCode.s406: 406,
  StatusCode.s408: 408,
  StatusCode.s409: 409,
  StatusCode.s500: 500,
  StatusCode.s501: 501,
  StatusCode.s502: 502,
  StatusCode.s503: 503,
  StatusCode.s504: 504,
  StatusCode.s999: 999,
  StatusCode.s601: 601,
  StatusCode.s602: 602,
  StatusCode.s603: 603,
  StatusCode.s604: 604,
  StatusCode.s605: 605,
  StatusCode.s606: 606,
  StatusCode.s607: 607,
  StatusCode.s608: 608,
  StatusCode.s609: 609,
  StatusCode.s610: 610,
  StatusCode.s611: 611,
  StatusCode.s612: 612,
  StatusCode.s613: 613,
  StatusCode.s614: 614,
  StatusCode.s615: 615,
  StatusCode.s616: 616,
  StatusCode.s617: 617,
  StatusCode.s618: 618,
  StatusCode.s619: 619,
  StatusCode.s620: 620,
  StatusCode.s621: 621,
  StatusCode.s622: 622,
  StatusCode.s623: 623,
  StatusCode.s624: 624,
  StatusCode.s625: 625,
  StatusCode.s626: 626,
  StatusCode.s627: 627,
  StatusCode.s628: 628,
  StatusCode.s629: 629,
  StatusCode.s630: 630,
  StatusCode.s631: 631,
  StatusCode.s632: 632,
  StatusCode.s633: 633,
  StatusCode.s634: 634,
  StatusCode.s635: 635,
  StatusCode.s636: 636,
  StatusCode.s637: 637,
  StatusCode.s638: 638,
  StatusCode.s639: 639,
  StatusCode.s640: 640,
  StatusCode.s641: 641,
  StatusCode.s642: 642,
  StatusCode.s643: 643,
  StatusCode.s644: 644,
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
      status: $enumDecode(_$StatusCodeEnumMap, json['status']),
      message: json['message'] as String,
      errors: json['errors'] as String?,
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
      'status': _$StatusCodeEnumMap[instance.status]!,
      'message': instance.message,
      'errors': instance.errors,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'pageElements': instance.pageElements,
      'pageLimit': instance.pageLimit,
      'pageNumbers': instance.pageNumbers,
    };
