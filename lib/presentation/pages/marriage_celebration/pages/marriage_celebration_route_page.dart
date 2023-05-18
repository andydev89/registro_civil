import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';

class MarriageCelebrationRouterPage extends ConsumerWidget {
  const MarriageCelebrationRouterPage({
    super.key,
    @QueryParam('showAgreement') this.showAgreement = true,
  });
  final bool showAgreement;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref
      ..watch(marriageCelebrationProvider)
      ..watch(witnesssProvider(0))
      ..watch(witnesssProvider(1))
      ..watch(partnersProvider(0))
      ..watch(partnersProvider(1));
    return const AutoRouter();
  }
}
