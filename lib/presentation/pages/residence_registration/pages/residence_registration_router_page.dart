import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/providers/residence_registration/residence_registration_providers.dart';

class ResidenceRegistrationRouterPage extends ConsumerWidget {
  const ResidenceRegistrationRouterPage({
    super.key,
   @QueryParam('showAgreement') this.showAgreement = true,
  });
  final bool showAgreement;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref
      ..watch(residentialPProvider)
      ..watch(resRegProvider);
    return const AutoRouter();
  }
}
