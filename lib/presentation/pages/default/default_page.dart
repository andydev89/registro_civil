import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class DefaultPage extends ConsumerWidget {
  const DefaultPage({super.key, required this.typeServiceModel});

  final TypeServiceModel typeServiceModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: typeServiceModel.name,
      body: const Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryLabel(
              'Pendiente a desarrollo',
            )
          ],
        ),
      ),
      bottomNavigationBar: PrimaryButton(
        title: l10n.aceptar,
        onPressed: () => context.popRoute(),
      ).verticalPadding(10),
    );
  }
}
