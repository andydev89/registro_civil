import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MarriageCelebrationRouterPage extends ConsumerWidget {
  const MarriageCelebrationRouterPage({
    super.key,
    @QueryParam('showAgreement') this.showAgreement = true,
  });
  final bool showAgreement;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AutoRouter();
  }
}
