import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';

class SimpleCertificateRouterPage extends StatelessWidget {
  const SimpleCertificateRouterPage({
    required this.typeSimpleCertificate,
    super.key,
  });
  final TypeSimpleCertificateEnum typeSimpleCertificate;

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
