import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/widgets/cards/translucent_card.dart';
import 'package:registro_civil_apk/presentation/widgets/success_widget.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TranslucentCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SuccessWidget().symmetricPadding(20, 50),
          child,
        ],
      ),
    );
  }
}
