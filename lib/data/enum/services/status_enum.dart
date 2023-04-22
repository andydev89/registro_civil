import 'package:json_annotation/json_annotation.dart';

enum Status {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('INACTIVE')
  inactive,
}
