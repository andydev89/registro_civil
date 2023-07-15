import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

import '../widgets/first_step_form.dart';

class CedulacionExtPvezMainPage extends ConsumerWidget {
  const CedulacionExtPvezMainPage({
    super.key,
    required this.typeServiceModel,
  });

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: typeServiceModel.name,
      body: Expanded(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CedExtFirstStepForm().verticalPadding(10).horizontalPadding(20),
              PrimaryButton(
                title: l10n.ageTurno,
                onPressed: () => context.popRoute(),
              ).verticalPadding(10).horizontalPadding(20),
              PrimaryButton(
                title: l10n.cancelar,
                onPressed: () => context.popRoute(),
              ).verticalPadding(10).horizontalPadding(20),
            ],
          ),
        ),
      ),
      /* bottomNavigationBar: PrimaryButton(
        title: l10n.cancelar,
        onPressed: () => context.popRoute(),
      ).verticalPadding(10).horizontalPadding(20),*/
    );
  }
}
