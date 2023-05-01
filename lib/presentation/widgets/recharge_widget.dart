import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class RechargeWidget extends ConsumerWidget {
  const RechargeWidget({
    super.key,
    required this.error,
    required this.state,
  });
  final String error;
  final Refreshable<dynamic> state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PrimaryText(error),
        const SizedBox(height: 20),
        PrimaryButton(
          title: l10n.recargar,
          onPressed: () => ref.refresh(state),
        ),
      ],
    );
  }
}
