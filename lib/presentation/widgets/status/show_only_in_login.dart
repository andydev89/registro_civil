import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';

class ShowOnlyInLogin extends ConsumerWidget {
  const ShowOnlyInLogin({
    super.key,
    required this.child,
    this.showOntrue = true,
  });
  final Widget child;
  final bool showOntrue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(loginProvider.notifier);
    return FutureBuilder(
      future: auth.future,
      builder: (context, snapshot) => Visibility(
        visible: snapshot.hasData && (snapshot.data! == showOntrue),
        child: child,
      ),
    );
  }
}
