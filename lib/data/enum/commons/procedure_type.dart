import 'package:json_annotation/json_annotation.dart';

enum ProcedureType {
  @JsonValue('PERSONAL')
  personal,
  @JsonValue('FAMILY')
  familiar,
}
