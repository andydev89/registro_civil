import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/widgets/scrollables/circle_avatar_card_grid.dart';

class TexterPage extends StatelessWidget {
  const TexterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CircleAvatarCardGrid(
        elements: [
          CircleAvatarCardModel(
            image: Assets.png.agendarTurno1.image(),
            title: 'Certificado',
          ),
          CircleAvatarCardModel(
            image: Assets.png.agendarTurno1.image(),
            title: 'Certificado',
          ),
          CircleAvatarCardModel(
            image: Assets.png.agendarTurno1.image(),
            title: 'Certificado',
          ),
          CircleAvatarCardModel(
            image: Assets.png.agendarTurno1.image(),
            title: 'Certificado',
          ),
          CircleAvatarCardModel(
            image: Assets.png.agendarTurno1.image(),
            title: 'Certificado',
          ),
          CircleAvatarCardModel(
            image: Assets.png.agendarTurno1.image(),
            title: 'Certificado',
          ),
        ],
      ),
    );
  }
}
