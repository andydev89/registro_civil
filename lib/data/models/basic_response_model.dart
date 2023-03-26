import 'package:json_annotation/json_annotation.dart';
part 'basic_response_model.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BasicResponse<T> {
  BasicResponse({
    required this.statusCode,
    required this.body,
  });

  factory BasicResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BasicResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) =>
      _$BasicResponseToJson(this, toJsonT);

  final int statusCode;
  final T? body;
}

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
  final int status;
  final String message;
  final List<String>? errors;
  final T? data;

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
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
  final int status;
  final String message;
  final List<String>? errors;
  final T? data;
  final int? totalPages;
  final int? totalElements;
  final int? pageElements;
  final int? pageLimit;
  final int? pageNumbers;

  Map<String, dynamic> toJson(
    Object Function(T value) toJsonT,
  ) =>
      _$ResponseModelPaginationToJson(this, toJsonT);
}
