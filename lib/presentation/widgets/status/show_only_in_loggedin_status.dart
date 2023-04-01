import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';

class ShowOnlyInLoggedInStatus extends ConsumerWidget {
  const ShowOnlyInLoggedInStatus({
    super.key,
    required this.child,
    this.reversedCondition = false,
  });
  final Widget child;
  final bool reversedCondition;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(loginProvider);
    return auth.when(
      data: (data) => Visibility(
        visible: reversedCondition ? !data : data,
        child: child,
      ),
      error: (error, stackTrace) => ErrorStatus(messagge: error.toString()),
      loading: () => const LoadingStatus(),
    );
  }
}
