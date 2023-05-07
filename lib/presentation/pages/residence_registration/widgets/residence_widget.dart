import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/presentation/widgets/decoration_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class ResidenceWidget extends StatelessWidget {
  const ResidenceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: gradientePrincipal(),
              ),
              child: PrimaryText(
                'Tipo de vivienda',
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ).symmetricPadding(5, 10),
            ),
            PrimaryText(
              'sdfsdf',
              textAlign: TextAlign.end,
            ),
          ],
        ).verticalPadding(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText('Dirección'),
            PrimaryText(
              'sdfsdf',
              textAlign: TextAlign.end,
            ),
          ],
        ).verticalPadding(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText('Tipo de residencia'),
            PrimaryText(
              'sdfsdf',
              textAlign: TextAlign.end,
            ),
          ],
        ).verticalPadding(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryText('Accion'),
            PrimaryText(
              'sdfsdf',
              textAlign: TextAlign.end,
            ),
          ],
        ).verticalPadding(10),
      ],
    ).horizontalPadding(10);
  }
}
