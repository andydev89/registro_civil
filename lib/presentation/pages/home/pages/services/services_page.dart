import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/type_services/type_services_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/scrollables/circle_avatar_card_grid.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ServicesPage extends ConsumerWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final typeServices = ref.watch(typeServicesProvider);
    return typeServices.when(
      skipLoadingOnRefresh: false,
      data: (data) => CircleAvatarCardGrid(elements: data),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PrimaryText(error.toString(), maxLines: 10),
            PrimaryButton(
              title: l10n.recargar,
              onPressed: () => ref.refresh(typeServicesProvider),
            ),
          ],
        ),
      ),
    );
  }
}
