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
      status: $enumDecode(_$StatusCodeTypeEnumMap, json['status'],
          unknownValue: StatusCodeType.s999),
      message: json['message'] as String,
      errors: json['errors'],
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$ResponseModelToJson<T>(
  ResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'status': _$StatusCodeTypeEnumMap[instance.status]!,
      'message': instance.message,
      'errors': instance.errors,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

const _$StatusCodeTypeEnumMap = {
  StatusCodeType.s200: 200,
  StatusCodeType.s201: 201,
  StatusCodeType.s202: 202,
  StatusCodeType.s400: 400,
  StatusCodeType.s401: 401,
  StatusCodeType.s403: 403,
  StatusCodeType.s404: 404,
  StatusCodeType.s405: 405,
  StatusCodeType.s406: 406,
  StatusCodeType.s408: 408,
  StatusCodeType.s409: 409,
  StatusCodeType.s412: 412,
  StatusCodeType.s500: 500,
  StatusCodeType.s501: 501,
  StatusCodeType.s502: 502,
  StatusCodeType.s503: 503,
  StatusCodeType.s504: 504,
  StatusCodeType.s999: 999,
  StatusCodeType.s601: 601,
  StatusCodeType.s602: 602,
  StatusCodeType.s603: 603,
  StatusCodeType.s604: 604,
  StatusCodeType.s605: 605,
  StatusCodeType.s606: 606,
  StatusCodeType.s607: 607,
  StatusCodeType.s608: 608,
  StatusCodeType.s609: 609,
  StatusCodeType.s610: 610,
  StatusCodeType.s611: 611,
  StatusCodeType.s612: 612,
  StatusCodeType.s613: 613,
  StatusCodeType.s614: 614,
  StatusCodeType.s615: 615,
  StatusCodeType.s616: 616,
  StatusCodeType.s617: 617,
  StatusCodeType.s618: 618,
  StatusCodeType.s619: 619,
  StatusCodeType.s620: 620,
  StatusCodeType.s621: 621,
  StatusCodeType.s622: 622,
  StatusCodeType.s623: 623,
  StatusCodeType.s624: 624,
  StatusCodeType.s625: 625,
  StatusCodeType.s626: 626,
  StatusCodeType.s627: 627,
  StatusCodeType.s628: 628,
  StatusCodeType.s629: 629,
  StatusCodeType.s630: 630,
  StatusCodeType.s631: 631,
  StatusCodeType.s632: 632,
  StatusCodeType.s633: 633,
  StatusCodeType.s634: 634,
  StatusCodeType.s635: 635,
  StatusCodeType.s636: 636,
  StatusCodeType.s637: 637,
  StatusCodeType.s638: 638,
  StatusCodeType.s639: 639,
  StatusCodeType.s640: 640,
  StatusCodeType.s641: 641,
  StatusCodeType.s642: 642,
  StatusCodeType.s643: 643,
  StatusCodeType.s644: 644,
  StatusCodeType.s680: 680,
  StatusCodeType.s681: 681,
  StatusCodeType.s682: 682,
  StatusCodeType.s683: 683,
  StatusCodeType.s684: 684,
  StatusCodeType.s685: 685,
  StatusCodeType.s686: 686,
  StatusCodeType.s687: 687,
  StatusCodeType.s740: 740,
  StatusCodeType.s762: 762,
  StatusCodeType.s722: 722,
  StatusCodeType.s738: 738,
  StatusCodeType.s739: 739,
  StatusCodeType.s757: 757,
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
      timestamp: json['timestamp'] as String? ?? '',
      status: $enumDecodeNullable(_$StatusCodeTypeEnumMap, json['status'],
              unknownValue: StatusCodeType.s999) ??
          StatusCodeType.s200,
      message: json['message'] as String? ?? '',
      errors: json['errors'],
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
      'status': _$StatusCodeTypeEnumMap[instance.status]!,
      'message': instance.message,
      'errors': instance.errors,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'pageElements': instance.pageElements,
      'pageLimit': instance.pageLimit,
      'pageNumbers': instance.pageNumbers,
    };

PlaceToPayResponseModel<T> _$PlaceToPayResponseModelFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    PlaceToPayResponseModel<T>(
      status: $enumDecodeNullable(_$StatusCodeTypeEnumMap, json['Code']),
      message: json['Message'] as String?,
      details: json['Details'] as String?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$PlaceToPayResponseModelToJson<T>(
  PlaceToPayResponseModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'Code': _$StatusCodeTypeEnumMap[instance.status],
      'Message': instance.message,
      'Details': instance.details,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };
