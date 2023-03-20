import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/scrollables/circle_avatar_card_grid.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: CircleAvatarCardGrid(
        elements: [
          CircleAvatarCardModel(
            image: Assets.png.agendarTurnos.image(),
            title: l10n.ageTurnos,
            onPressedCheck: () =>
                context.navigateTo(const ScheduleTurnRouterRoute()),
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.seguimientoLinea.image(),
            title: l10n.segLinea,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.validacionDatosPersonales.image(),
            title: l10n.validacionDatPer,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.validacionDocumentos.image(),
            title: l10n.validacionDocumentos,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoNacimiento.image(),
            title: l10n.certificadoNac,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoMatrimonio.image(),
            title: l10n.certificadoMat,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoDefuncion.image(),
            title: l10n.certificadoDef,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoUnionHecho.image(),
            title: l10n.certificadoUniHec,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoIdentidad.image(),
            title: l10n.certificadoIden,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoGenero.image(),
            title: l10n.certificadoGen,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoNacimiento.image(),
            title: l10n.copiaActRegNac,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoMatrimonio.image(),
            title: l10n.copiaActRegMat,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoGenero.image(),
            title: l10n.copiaActRegRegGen,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoUnionHecho.image(),
            title: l10n.copiaActRegUniHec,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.pagoServicioIngresosSentencias.image(),
            title: l10n.pagoSerIngSeAcNot,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.pagoConvalidacionDocumentos.image(),
            title: l10n.pagoConDoc,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoFirmaElectronica.image(),
            title: l10n.certificadoFirElec,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.registroResidencia.image(),
            title: l10n.registroRes,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoIdentidad.image(),
            title: l10n.cambioNom,
            onPressedCheck: () {},
            onPressedView: () {},
          ),
        ],
      ),
    );
  }
}
