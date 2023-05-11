import 'package:json_annotation/json_annotation.dart';

enum Status {
  @JsonValue('ACTIVE')
  active('ACTIVE'),
  @JsonValue('INACTIVE')
  inactive('INACTIVE'),
  @JsonValue('UNPAID')
  unpaind('UNPAID');

  const Status(this.toText);
  final String toText;
}
