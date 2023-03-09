import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ScanRouterPage extends StatelessWidget {
  const ScanRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, content) => content,
    );
  }
}
