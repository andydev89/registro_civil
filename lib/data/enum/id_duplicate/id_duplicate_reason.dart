import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum IdDuplicateReason implements Translatable {
  @JsonValue('LOSS')
  loss('LOSS'),
  @JsonValue('HEIST')
  heist('HEIST'),
  @JsonValue('SPOILAGE')
  spoilage('SPOILAGE');

  const IdDuplicateReason(this.text);
  final String text;

  @override
  String translate(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case IdDuplicateReason.loss:
        return 'Pérdida';
      case IdDuplicateReason.heist:
        return 'Robo';
      case IdDuplicateReason.spoilage:
        return 'Deterioro';
    }
  }
}
