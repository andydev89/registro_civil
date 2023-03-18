import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/pages/root/widgets/finger_print_scaffold.dart';

class RootRouterPage extends StatelessWidget {
  const RootRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FingerPrintScaffold(body: AutoRouter());
  }
}
