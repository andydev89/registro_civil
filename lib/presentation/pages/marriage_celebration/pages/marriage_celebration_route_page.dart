import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/marriage_celebration/marriage_celebration_provider.dart';

class MarriageCelebrationRouterPage extends ConsumerWidget {
  const MarriageCelebrationRouterPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    ref.watch(marriageCelebrationProvider);
    return const AutoRouter();
  }
}
