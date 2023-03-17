import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/widgets/circle_avatar_card.dart';

class TexterPage extends StatelessWidget {
  const TexterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        children: [
          CircleAvatarCardWidget(
            image: (width) => Assets.png.certificadoNacimiento.image(
              width: width,
              height: width,
            ),
            title: 'Certificado de nacimiento',
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          // CircleAvatarCardWidget(
          //   svgImage: const Icon(Icons.ac_unit),
          //   title: 'Certificado de nacimiento',
          //   onPressedCheck: () {},
          //   onPressedView: () {},
          // ),
          // CircleAvatarCardWidget(
          //   svgImage: const Icon(Icons.ac_unit),
          //   title: 'Certificado de nacimiento',
          //   onPressedCheck: () {},
          //   onPressedView: () {},
          // ),
          // CircleAvatarCardWidget(
          //   svgImage: const Icon(Icons.ac_unit),
          //   title: 'Certificado de nacimiento',
          //   onPressedCheck: () {},
          //   onPressedView: () {},
          // ),
        ],
      ),
    );
  }
}
