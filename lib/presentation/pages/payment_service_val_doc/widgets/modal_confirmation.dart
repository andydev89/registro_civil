import 'package:flutter/material.dart';
import 'package:power_ups/extensions/widget_extension.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_async_button.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

import 'info_widget.dart';

class ModalConfirmationPaymentSValidacionDoc extends StatelessWidget {
  const ModalConfirmationPaymentSValidacionDoc({
    super.key,
    required this.onConfirm,
    required this.ok,
  });
  final Future<void> Function() onConfirm;
  final ValueNotifier<bool> ok;

  @override
  Widget build(BuildContext context) {
    ok.addListener(() {
      if (ok.value) {
        Navigator.pop(context);
      }
    });
    final l10n = context.l10n;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const InfoWidget().verticalPadding(25),
            const SizedBox(height: 25),
            PrimaryText(
              l10n.confirmacionPaymentServiceValidarDoc,
              textAlign: TextAlign.start,
              maxLines: null,
            ),
            const SizedBox(height: 30),
          ],
        ).symmetricPadding(10, 20),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PrimaryButton(
              title: l10n.cancelar,
              onPressed: () => Navigator.pop(context),
            ),
            const SizedBox(height: 10),
            PrimaryAsyncButton(
              title: l10n.continuar,
              onPressed: onConfirm,
            ),
          ],
        )
      ],
    );
  }
}
