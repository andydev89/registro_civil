import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/id_duplicate/id_duplicate.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class IdDuplicateDetailPage extends ConsumerWidget {
  const IdDuplicateDetailPage({
    super.key,
    required this.typeServiceModel,
    required this.me,
  });

  final TypeServiceModel typeServiceModel;
  final MeModel me;

  // String identification;
  // String name;
  // String procedureName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final data = ref.watch(idDuplicateProvider);
    final currency = NumberFormat("#,##0.00", "en_US");
    // final me = ref.watch(meProvider).value ?? MeModel();
    return PrimaryScaffold(
      title: l10n.duplicadoCed,
      subtitle: 'Detalles',
      body: ProcedureReasonSubModelFormBuilder(
        builder: (context, formModel, child) => Expanded(
          child: SingleChildScrollView(
            child: PrimaryCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SecondaryRowLabel(
                        label: l10n.numCedula,
                        value: data.nui ?? '',
                      ),
                      SecondaryRowLabel(
                        label: 'Nombre del ciudadano',
                        value: '${me.firstName} ${me.lastName}',
                      ),
                      SecondaryRowLabel(
                        label: 'Trámite',
                        value: typeServiceModel.name,
                      ),
                      SecondaryRowLabel(
                        label: 'Valor unitario',
                        value: '\$${currency.format(typeServiceModel.price)}',
                      ),
                      SecondaryRowLabel(
                        label: 'Subtotal',
                        value: '\$${currency.format(typeServiceModel.price)}',
                      ),
                      SecondaryRowLabel(
                        label: 'IVA',
                        value: '\$${currency.format(typeServiceModel.iva)}',
                      ),
                      SecondaryRowLabel(
                        label: 'Descuento',
                        value:
                            '\$${currency.format(typeServiceModel.discount)}',
                      ),
                      SecondaryRowLabel(
                        label: 'Total',
                        value: '\$${currency.format(typeServiceModel.total)}',
                      ),
                      const SecondaryRowLabel(
                        label: 'Estado del pago',
                        value: 'SIN PAGAR',
                        valueColor: red,
                      ),
                      const SecondaryRowLabel(
                        label: 'Estado de la solicitud',
                        value: 'ACTIVO',
                        valueColor: green,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ReactiveProcedureReasonSubModelFormConsumer(
                    builder: (context, formModel, child) => PrimaryAsyncButton(
                      title: l10n.confirmar,
                      onPressed: () => ref
                            .read(idDuplicateApiProvider.notifier)
                            .duplicate(ref.watch(idDuplicateProvider))
                            .when(
                          ok: (_) {
                            showAlert(
                              'Duplicado creado satisfactoriamente',
                              TypeAlert.success,
                            );
                        },
                        err: (err) {
                          showAlert(
                            err.translate(context),
                            TypeAlert.error,
                          );
                        },
                      ),
                    ),
                  ),
                  PrimaryButton(
                    title: l10n.cancelar,
                    onPressed: () => context.popRoute(),
                  ).verticalPadding(10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
