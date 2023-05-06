import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/model/data_alert.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oxidized/oxidized.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_response.dart';
import 'package:registro_civil_apk/data/providers/simple_certificate/simple_certificate_provider.dart';
import 'package:registro_civil_apk/data/utils/alert_methods.dart';
import 'package:registro_civil_apk/data/utils/methods.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';

class SimpleCertificateSecondStepPage extends ConsumerWidget {
  const SimpleCertificateSecondStepPage({
    required this.simpleCertificateResponse,
    super.key,
  });
  final SimpleCertificateResponse simpleCertificateResponse;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return FocusScope(
      node: FocusScopeNode(
        canRequestFocus: false,
      ),
      child: PrimaryScaffold(
        title: l10n.verificarInfo,
        body: Expanded(
          child: Scaffold(
            body: FutureBuilder(
              future:
                  createPdfFileFromBase64(simpleCertificateResponse.document),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return PDFView(
                    filePath: snapshot.data!.path,
                    swipeHorizontal: true,
                    fitPolicy: FitPolicy.BOTH,
                    onError: (error) {},
                  ).verticalPadding(20);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
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
                          showOffersDialog(context);
                        },
                        err: (error) => showAlert(
                          error.translate(context),
                          TypeAlert.error,
                        ),
                      ),
                ),
                const SizedBox(height: 15),
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
        ),
      ),
    );
  }
}
