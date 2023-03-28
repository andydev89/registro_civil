import 'package:flutter/material.dart';

class SlidingDialog extends Dialog {
  const SlidingDialog({super.key, required super.child});

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: ModalRoute.of(context)!.animation!,
          curve: Curves.easeInOut,
        ),
      ),
      child: Material(
        type: MaterialType.transparency,
        child: Align(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 0.95,
              maxHeight: MediaQuery.of(context).size.height * 0.8,
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
