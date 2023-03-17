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
