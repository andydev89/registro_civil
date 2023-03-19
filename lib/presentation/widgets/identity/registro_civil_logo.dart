import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';

class RegistroCivilLogo extends StatelessWidget {
  const RegistroCivilLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Assets.png.logo.image();
  }
}
