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

class DocumentValidationSecondStepPage extends ConsumerWidget {
  const DocumentValidationSecondStepPage({
    required this.document,
    required this.model,
    super.key,
  });
  final String document;
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
            body: PDFViewWidget(document: document),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryAsyncButton(
              title: l10n.descargar,
              onPressed: () async => {},
            ),
          ],
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
