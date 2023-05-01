import 'package:json_annotation/json_annotation.dart';

enum TransactionStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('FAILED')
  failed,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('REJECTED')
  rejected,
}
