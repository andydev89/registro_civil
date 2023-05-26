
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

enum SortType implements Translatable{
  asc('asc'),
  desc('desc');

  const SortType(this.toJson);
  final String toJson;

  @override
  String translate(BuildContext context){
    final l10n = context.l10n;
    switch(this){
      case SortType.asc:
      return  l10n.asc;
      case SortType.desc:
      return  l10n.desc;
    }
  }
}
