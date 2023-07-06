import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';

class ElectronicSignatureRouterPage extends ConsumerWidget {
  const ElectronicSignatureRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(electronicSignatureProvider);
    return const AutoRouter();
  }
}
