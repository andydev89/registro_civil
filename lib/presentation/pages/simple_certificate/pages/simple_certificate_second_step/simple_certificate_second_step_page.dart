import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/data/utils/utils.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class SimpleCertificateSecondStepPage extends ConsumerWidget {
  const SimpleCertificateSecondStepPage({
    required this.simpleCertificateResponse,
    required this.model,
    super.key,
  });
  final SimpleCertificateResponseModel simpleCertificateResponse;
  final TypeServiceModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return FocusScope(
      node: FocusScopeNode(
        canRequestFocus: false,
      ),
      child: PrimaryScaffold(
        title: '${l10n.verificarInfo}: ${model.name}',
        body: Expanded(
          child: Scaffold(
            body: PDFViewWidget(document: simpleCertificateResponse.document),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryAsyncButton(
              title: l10n.aceptar,
              onPressed: () => ref
                  .read(processProvider.notifier)
                  .processSimpleCertificate(
                    id: simpleCertificateResponse.serviceId,
                  )
                  .when(
                    ok: (_) {
                      context.navigateTo(const HomeRouterRoute());
                      // quitar foco
                      FocusScope.of(context).unfocus();
                      ref
                          .read(offersProvider.notifier)
                          .addOffer(OffersModel(simpleCertificate: model));
                      showOffersDialog(context);
                    },
                    err: (error) => showAlert(
                      error.translate(context),
                      TypeAlert.error,
                    ),
                  ),
            ),
            const SizedBox(height: 10),
            PrimaryAsyncButton(
              title: l10n.rechazar,
              onPressed: () => ref
                  .read(cancelProvider.notifier)
                  .cancelSimpleCertificate(
                    id: simpleCertificateResponse.serviceId,
                  )
                  .when(
                    ok: (_) => context.navigateTo(const HomeRouterRoute()),
                    err: (error) => showAlert(
                      error.translate(context),
                      TypeAlert.error,
                    ),
                  ),
            ),
          ],
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
