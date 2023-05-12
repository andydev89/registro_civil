import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

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

enum StateEnum {
  @JsonValue('UNPAID')
  pending('UNPAID'),
  @JsonValue('PAID_UP')
  paid('PAID_UP'),
  @JsonValue('ATTENDED')
  expired('ATTENDED'),
  @JsonValue('NOT_ATTENDED')
  cancelled('NOT_ATTENDED');

  const StateEnum(this.toText);
  final String toText;

  Color get color {
    switch (this) {
      case StateEnum.pending:
        return ligthBlue;
      case StateEnum.paid:
        return green;
      case StateEnum.expired:
        return yellow;
      case StateEnum.cancelled:
        return red;
    }
  }
}
