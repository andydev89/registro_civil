import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class BirthAbroadDocumentDetailPage extends ConsumerWidget {
  const BirthAbroadDocumentDetailPage({
    required this.document,
    super.key,
  });
  final String document;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return FocusScope(
      node: FocusScopeNode(
        canRequestFocus: false,
      ),
      child: PrimaryScaffold(
        title: 'Detalles del documento',
        body: Expanded(
          child: Scaffold(
            body: PDFViewWidget(document: document),
          ),
        ),
        bottomNavigationBar: PrimaryButton(
          title: l10n.aceptar,
          onPressed: () => context.popRoute(),
        ).symmetricPadding(10, 30),
      ),
    );
  }
}
