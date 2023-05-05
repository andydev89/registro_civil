import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/enum/commons/payment_status.dart';
import 'package:registro_civil_apk/data/enum/commons/procedure_status.dart';
import 'package:registro_civil_apk/data/enum/services/services_type.dart';
import 'package:registro_civil_apk/data/enum/services/status_enum.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/my_orders/models/my_order_expandable_card_model.dart';
import 'package:registro_civil_apk/presentation/pages/my_orders/widgets/my_orders_expandable_card.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_search.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';

class MyOrdersPage extends ConsumerWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final myTurns = ref.watch(schedulesProvider);
    return PrimaryScaffold(
      horizontalPadding: 15,
      title: l10n.misTurnos,
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              PrimarySearch(
                showFilter: true,
                filter: (p0) {},
              ).verticalPadding(20),
              myTurns.when(
                data: (data) => data.when(
                  ok: (value) => Column(
                    children: value
                        .map(
                          (e) => MyOrderExpandableCard(
                            data: MyOrderExpandableCardModel(
                              id: 1,
                              date: DateTime.now(),
                              discount: 2,
                              iva: 2,
                              nut: 'asd',
                              paymentStatus: PaymentStatus.payed,
                              proceduresStatus: ProceduresStatus.requested,
                              subtotal: 2,
                              total: 2,
                              unitaryValue: 2,
                              typeOfService: TypeServiceModel(
                                id: '2',
                                name: 'name',
                                price: 2,
                                iva: 2,
                                discount: 2,
                                state: Status.active,
                                publishWeb: false,
                                publishMovil: true,
                                type: TypeService.birth,
                                iconoMovil: '',
                                iconoWeb: '',
                                schedule: true,
                                description: 'sdsdfdfd',
                              ),
                            ),
                          ).verticalPadding(10),
                        )
                        .toList(),
                  ),
                  err: (error) => ErrorStatus(messagge: error.toString()),
                ),
                error: (error, stackTrace) =>
                    ErrorStatus(messagge: error.toString()),
                loading: () => const LoadingStatus(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
