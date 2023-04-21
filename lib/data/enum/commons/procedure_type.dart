import 'package:json_annotation/json_annotation.dart';

enum ProcedureType {
  @JsonValue('PERSONAL')
  personal,
  @JsonValue('FAMILIAR')
  familiar,
}
