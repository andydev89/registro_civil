import 'package:flutter/material.dart';

class ShadowsWidget extends StatelessWidget {
  const ShadowsWidget({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: -9,
            blurRadius: 1,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: child,
    );
  }
}
