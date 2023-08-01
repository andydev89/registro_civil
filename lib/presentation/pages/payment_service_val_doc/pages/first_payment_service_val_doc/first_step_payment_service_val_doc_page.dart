import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class PaymentServiceValDocFirstPage extends ConsumerWidget {
  const PaymentServiceValDocFirstPage({
    super.key,
    required this.typeServiceModel,
  });

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;

    return PrimaryScaffold(
      title: typeServiceModel.name,
      body: CedulacionExtpVModelFormBuilder(
        builder: (context, formModel, child) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ).verticalPadding(30).horizontalPadding(20),
                PrimaryButton(
                  title: l10n.aceptar,
                  onPressed: () => context.popRoute(),
                ).verticalPadding(10).horizontalPadding(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
