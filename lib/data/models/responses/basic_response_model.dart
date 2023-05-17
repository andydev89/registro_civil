import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/status_code/status_code_type.dart';
part 'basic_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ResponseModel<T> {
  ResponseModel({
    required this.timestamp,
    required this.status,
    required this.message,
    required this.errors,
    required this.data,
  });

  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResponseModelFromJson(json, fromJsonT);
  final String timestamp;
  @JsonKey(unknownEnumValue: StatusCodeType.s999)
  final StatusCodeType status;
  final String message;
  final dynamic errors;
  final T? data;
  bool get success =>
      status == StatusCodeType.s200 ||
      status == StatusCodeType.s201 ||
      status == StatusCodeType.s202;

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$ResponseModelToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class ResponseModelPagination<T> {
  ResponseModelPagination({
    this.timestamp = '',
    this.status = StatusCodeType.s200,
    this.message = '',
    this.errors,
    this.data,
    this.totalPages,
    this.totalElements,
    this.pageElements,
    this.pageLimit,
    this.pageNumbers,
  });

  factory ResponseModelPagination.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResponseModelPaginationFromJson(json, fromJsonT);

  final String timestamp;
  @JsonKey(unknownEnumValue: StatusCodeType.s999)
  final StatusCodeType status;
  final String message;
  final dynamic errors;
  final T? data;
  final int? totalPages;
  final int? totalElements;
  final int? pageElements;
  final int? pageLimit;
  final int? pageNumbers;
  bool get success =>
      status == StatusCodeType.s200 ||
      status == StatusCodeType.s201 ||
      status == StatusCodeType.s202;

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$ResponseModelPaginationToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class PlaceToPayResponseModel<T> {
  PlaceToPayResponseModel({
    required this.status,
    required this.message,
    required this.details,
    required this.data,
  });

  factory PlaceToPayResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$PlaceToPayResponseModelFromJson(json, fromJsonT);
  @JsonKey(name: 'Code')
  final StatusCodeType? status;
  @JsonKey(name: 'Message')
  final String? message;
  @JsonKey(name: 'Details')
  final String? details;
  final T? data;
  bool get success =>
      status == StatusCodeType.s200 ||
      status == StatusCodeType.s201 ||
      status == StatusCodeType.s202 ||
      status == null;

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$PlaceToPayResponseModelToJson(this, toJsonT);
}
