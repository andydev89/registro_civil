import 'package:flutter/material.dart';

class ErrorStatus extends StatelessWidget {
  const ErrorStatus({
    super.key,
    required this.messagge,
  });
  final String messagge;

  @override
  Widget build(BuildContext context) {
    return Text(messagge);
  }
}
