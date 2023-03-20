import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/widgets/scrollables/circle_avatar_card_grid.dart';

class ProceduresPage extends StatelessWidget {
  const ProceduresPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: CircleAvatarCardGrid(
        elements: [
          CircleAvatarCardModel(
            image: Assets.png.certificadoIdentidad.image(),
            title: l10n.duplicadoCed,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoIdentidad.image(),
            title: l10n.cedulacionExtPriVez,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoMatrimonio.image(),
            title: l10n.celebracionMat,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoNacimiento.image(),
            title: l10n.registroNacExt,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
        ],
      ),
    );
  }
}
