import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/birth_abroad/birth_abroad.dart';

class BirthAbroadRouterPage extends ConsumerWidget {
  const BirthAbroadRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(birthAbroadProvider);
    return const AutoRouter();
  }
}
