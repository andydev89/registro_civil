import 'package:flutter/material.dart';

class LoadingStatusAdaptative extends StatelessWidget {
  const LoadingStatusAdaptative({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive();
  }
}
