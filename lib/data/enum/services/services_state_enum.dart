import 'package:json_annotation/json_annotation.dart';

enum ServicesState {
  // @JsonValue('requested')
  // requesting,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('WITH_ERRORS')
  withErrors,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('INACTIVE')
  inactive,
}
