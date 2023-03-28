import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/widgets/certificate_description.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
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
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum.birth,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum.birth,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoMatrimonio.image(),
            title: l10n.certificadoMat,
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum.marriage,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum.marriage,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoDefuncion.image(),
            title: l10n.certificadoDef,
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum.death,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum.death,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoUnionHecho.image(),
            title: l10n.certificadoUniHec,
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum.factorUnion,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum.factorUnion,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoIdentidad.image(),
            title: l10n.certificadoIden,
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum.identity,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum.identity,
              ),
            ),
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
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate:
                    TypeSimpleCertificateEnum.copyBirthRegistrationCertificate,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate:
                    TypeSimpleCertificateEnum.copyBirthRegistrationCertificate,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoMatrimonio.image(),
            title: l10n.copiaActRegMat,
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum
                    .copyMarriageRegistrationCertificate,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum
                    .copyMarriageRegistrationCertificate,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoGenero.image(),
            title: l10n.copiaActRegRegGen,
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum
                    .copyRegistrationCertificateGenderRegistration,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum
                    .copyRegistrationCertificateGenderRegistration,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoUnionHecho.image(),
            title: l10n.copiaActRegUniHec,
            onPressedCheck: () => context.navigateTo(
              SimpleCertificateRouterRoute(
                typeSimpleCertificate: TypeSimpleCertificateEnum
                    .copyFactoUnionRegistrationCertificate,
              ),
            ),
            onPressedView: () => showContentDialog(
              context,
              content: const CertificateDescription(
                typeSimpleCertificate: TypeSimpleCertificateEnum
                    .copyFactoUnionRegistrationCertificate,
              ),
            ),
          ),
          CircleAvatarCardModel(
            image: Assets.png.certificadoDefuncion.image(),
            title: l10n.copiaActRegDef,
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
