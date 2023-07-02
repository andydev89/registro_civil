import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';

class BodyDuplicateWidget extends HookWidget {
  const BodyDuplicateWidget({
    super.key,
    required this.typeServiceModel,
    this.operation = Crud.create,
  });
  final TypeServiceModel typeServiceModel;
  final Crud operation;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return const AutoRouter();
      },
    );
  }
}
