import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/personal_data_validation/personal_validation.dart';

class PersonalValidationRouterPage extends ConsumerWidget {
  const PersonalValidationRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(personalDataByIdProvider);
    return const AutoRouter();
  }
}
