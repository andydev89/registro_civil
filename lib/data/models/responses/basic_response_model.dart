import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/data/enum/status_codes_enum/status_codes_enum.dart';
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
  final StatusCode status;
  final String message;
  final String? errors;
  final T? data;
  bool get success =>
      status == StatusCode.s200 ||
      status == StatusCode.s201 ||
      status == StatusCode.s202;

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$ResponseModelToJson(this, toJsonT);
}

@JsonSerializable(genericArgumentFactories: true)
class ResponseModelPagination<T> {
  ResponseModelPagination({
    required this.timestamp,
    required this.status,
    required this.message,
    required this.errors,
    required this.data,
    required this.totalPages,
    required this.totalElements,
    required this.pageElements,
    required this.pageLimit,
    required this.pageNumbers,
  });

  factory ResponseModelPagination.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ResponseModelPaginationFromJson(json, fromJsonT);

  final String timestamp;
  final StatusCode status;
  final String message;
  final String? errors;
  final T? data;
  final int? totalPages;
  final int? totalElements;
  final int? pageElements;
  final int? pageLimit;
  final int? pageNumbers;
  bool get success =>
      status == StatusCode.s200 ||
      status == StatusCode.s201 ||
      status == StatusCode.s202;

  Map<String, dynamic> toJson(
    Object? Function(T value) toJsonT,
  ) =>
      _$ResponseModelPaginationToJson(this, toJsonT);
}
