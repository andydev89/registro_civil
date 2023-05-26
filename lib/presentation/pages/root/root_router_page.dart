import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fresh_dio/fresh_dio.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

class RootRouterPage extends ConsumerWidget {
  const RootRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    ref
      ..listen(authenticationStatusProvider, (previous, next) {
        if (next.asData?.value == AuthenticationStatus.unauthenticated) {
          context.navigateTo(const HomeRouterRoute());
        }
      })
      ..listen(transactionsStatusProvider, (previous, next) {
        final elementsToShow = [...next];
        for (final element in elementsToShow) {
          showAlert(
            '${l10n.laTransaccion} ${element.paymentGatewayReference}'
            '${l10n.haSido} ${element.transactionStatus?.translate(context)}',
            element.transactionStatus == TransactionStatusType.approved
                ? TypeAlert.success
                : TypeAlert.error,
          );
          ref
              .read(transactionsStatusProvider.notifier)
              .removeTransaction(element);
        }
      });
    return const FingerPrintScaffold(body: AutoRouter());
  }
}
