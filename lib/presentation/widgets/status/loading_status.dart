import 'package:flutter/material.dart';

class LoadingStatus extends StatelessWidget {
  const LoadingStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child:  CircularProgressIndicator.adaptive());
  }
}
