import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum RegisterOwnerType implements Translatable {
  @JsonValue('ATTORNEY')
  attorney('ATTORNEY'),
  @JsonValue('TITULAR')
  titular('TITULAR'),
  @JsonValue('PARENTS')
  parents('PARENTS'),
  @JsonValue('GRANDPARENTS')
  grandParents('GRANDPARENTS');

  const RegisterOwnerType(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case RegisterOwnerType.attorney:
        return l10n.apoderado;
      case RegisterOwnerType.titular:
        return l10n.titular;
      case RegisterOwnerType.parents:
        return l10n.padreOMadreEc;
      case RegisterOwnerType.grandParents:
        return l10n.abuelosOBisabuelos;
    }
  }
}