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
import 'package:registro_civil_apk/presentation/router/router.dart';
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
      subtitle: l10n.detalles,
      body: Expanded(
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
                      label: l10n.nombreCiudadano,
                      value: '${me.firstName} ${me.lastName}',
                    ),
                    SecondaryRowLabel(
                      label: l10n.tramite,
                      value: typeServiceModel.name,
                    ),
                    SecondaryRowLabel(
                      label: l10n.valorUnitario,
                      value: '\$${currency.format(typeServiceModel.price)}',
                    ),
                    SecondaryRowLabel(
                      label: l10n.subtotal,
                      value: '\$${currency.format(typeServiceModel.price)}',
                    ),
                    SecondaryRowLabel(
                      label: 'IVA',
                      value: '\$${currency.format(typeServiceModel.iva)}',
                    ),
                    SecondaryRowLabel(
                      label: l10n.descuento,
                      value:
                      '\$${currency.format(typeServiceModel.discount)}',
                    ),
                    SecondaryRowLabel(
                      label: l10n.total,
                      value: '\$${currency.format(typeServiceModel.total)}',
                    ),
                    SecondaryRowLabel(
                      label: l10n.estadoPago,
                      value: 'SIN PAGAR',
                      valueColor: red,
                    ),
                    SecondaryRowLabel(
                      label: l10n.estadoSol,
                      value: 'ACTIVO',
                      valueColor: green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                PrimaryAsyncButton(
                  title: l10n.confirmar,
                  onPressed: () => ref
                      .read(idDuplicateApiProvider.notifier)
                      .duplicate(ref.watch(idDuplicateProvider))
                      .when(
                    ok: (data) {
                      context
                        ..navigateTo(
                          IdDuplicateMainRoute(
                            typeServiceModel: typeServiceModel,
                          ),
                        )
                        ..navigateTo(
                          ChoosePaymentMethodRoute(
                            transactionCode: data.transactionCode,
                            service: typeServiceModel,
                          ),
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
                PrimaryButton(
                  title: l10n.cancelar,
                  onPressed: () => context.navigateTo(
                    IdDuplicateMainRoute(
                      typeServiceModel: typeServiceModel,
                    ),
                  ),
                ).verticalPadding(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
