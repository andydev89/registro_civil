import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';

class ChangeOfNameRouterPage extends ConsumerWidget {
  const ChangeOfNameRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(changeNameProvider);
    return const AutoRouter();
  }
}
