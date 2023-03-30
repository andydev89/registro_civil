import 'package:flutter/material.dart';

class RefreshStatus extends StatelessWidget {
  const RefreshStatus({super.key, required this.onRefresh});
  final void Function()? onRefresh;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onRefresh,
      padding: EdgeInsets.zero,
      icon: const Icon(
        Icons.refresh,
      ),
    );
  }
}
