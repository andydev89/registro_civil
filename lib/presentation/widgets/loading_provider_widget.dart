import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/presentation/widgets/status/error_status.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status.dart';

class LoadingProviderWidget<T> extends ConsumerWidget {
  const LoadingProviderWidget({
    super.key,
    required this.async,
    required this.data,
    required this.onRefresh,
  });
  final AsyncValue<T> async;
  final Widget Function(T) data;
  final void Function() onRefresh;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return async.when(
      skipLoadingOnRefresh: false,
      data: data,
      error: (error, _) => ErrorStatus(
        messagge: error.toString(),
        onPressed: onRefresh,
      ),
      loading: () => const LoadingStatus(),
    );
  }
}
