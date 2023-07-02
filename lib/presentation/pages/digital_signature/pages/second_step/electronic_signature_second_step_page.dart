import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/electronic_signature/electronic_signature.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class ElectronicSignatureSecondStepPage extends ConsumerWidget {
  const ElectronicSignatureSecondStepPage({
    super.key,
    this.operation = Crud.create,
    required this.citizen,
  });

  final Crud operation;
  final CitizenModel citizen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: l10n.solFirmaElectronica,
      subtitle: l10n.ingreseInfSol,
      body: Expanded(
        child: AutoRouter(
          builder: (context, content) => ESignatureFirstSubModelFormBuilder(
              builder: (context, formModel, child) {
                return Column(
                  children: [
                    ToggleSwitchWidget(
                      labels: [
                        'Contacto',
                        'Facturación',
                      ],
                      totalSwitches: 2,
                        onToggle: (index) {
                          index == 0 ?
                          context.replaceRoute(
                            ElectronicSignaturePersonalRoute(
                              citizen: citizen,
                              key: Key(index.toString()),
                              operation: operation,
                            ),
                          ) : context.replaceRoute(
                            ElectronicSignatureBillingRoute(
                              key: Key(index.toString()),
                              operation: operation,
                            ),
                          );
                        },
                    ),
                    // Expanded(child: content),
                    const SizedBox(height: 16,),
                    Expanded(
                      child: LayoutBuilder(
                          builder: (context, constraints) {
                            // final maxHeight = max(0, constraints.maxHeight);
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    height: constraints.maxHeight,
                                    // height: maxHeight - (heightFooter * 2),
                                    child: content,
                                  )
                                ],
                              ),
                            );
                          },
                      ),
                    ),
                  ],
                );
              },
            ),
        ),
      ),
    );
  }
}
