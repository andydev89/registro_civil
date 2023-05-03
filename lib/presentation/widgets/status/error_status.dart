import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ErrorStatus extends StatelessWidget {
  const ErrorStatus({
    super.key,
    required this.messagge,
  });
  final String messagge;

  @override
  Widget build(BuildContext context) {
    return PrimaryText(messagge);
  }
}
