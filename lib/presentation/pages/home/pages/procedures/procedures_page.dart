import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/providers/home_provider.dart';
import 'package:registro_civil_apk/presentation/widgets/scrollables/circle_avatar_card_grid.dart';

class ProceduresPage extends ConsumerWidget {
  const ProceduresPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final filter = ref.watch(searchHomeProvider);
    return Container();
    // return CircleAvatarCardGrid(
    //   filter: filter,
    //   elements: [
    //     CircleAvatarCardModel(
    //       image: Assets.png.certificadoIdentidad.image(),
    //       title: l10n.duplicadoCed,
    //       onPressedCheck: () {},
    //       onPressedView: () {},
    //     ),
    //     CircleAvatarCardModel(
    //       image: Assets.png.certificadoIdentidad.image(),
    //       title: l10n.cedulacionExtPriVez,
    //       onPressedCheck: () {},
    //       onPressedView: () {},
    //     ),
    //     CircleAvatarCardModel(
    //       image: Assets.png.certificadoMatrimonio.image(),
    //       title: l10n.celebracionMat,
    //       onPressedCheck: () {},
    //       onPressedView: () {},
    //     ),
    //     CircleAvatarCardModel(
    //       image: Assets.png.certificadoNacimiento.image(),
    //       title: l10n.registroNacExt,
    //       onPressedCheck: () {},
    //       onPressedView: () {},
    //     ),
    //   ],
    // );
  }
}
