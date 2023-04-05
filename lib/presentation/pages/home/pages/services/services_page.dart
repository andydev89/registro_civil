import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/models/circle_avatar_card_model.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/utils/simple_certificate_utils.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/widgets/certificate_description.dart';
import 'package:registro_civil_apk/presentation/providers/home_provider.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';
import 'package:registro_civil_apk/presentation/widgets/scrollables/circle_avatar_card_grid.dart';

class ServicesPage extends ConsumerWidget {
  const ServicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final filter = ref.watch(searchHomeProvider);
    return CircleAvatarCardGrid(
      filter: filter,
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
            getSimpleCertificateRoute(TypeSimpleCertificateEnum.birth),
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
            getSimpleCertificateRoute(TypeSimpleCertificateEnum.marriage),
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
            getSimpleCertificateRoute(TypeSimpleCertificateEnum.death),
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
            getSimpleCertificateRoute(TypeSimpleCertificateEnum.factorUnion),
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
            getSimpleCertificateRoute(TypeSimpleCertificateEnum.identity),
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
            getSimpleCertificateRoute(
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
            getSimpleCertificateRoute(
              TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate,
            ),
          ),
          onPressedView: () => showContentDialog(
            context,
            content: const CertificateDescription(
              typeSimpleCertificate:
                  TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate,
            ),
          ),
        ),
        CircleAvatarCardModel(
          image: Assets.png.certificadoGenero.image(),
          title: l10n.copiaActRegRegGen,
          onPressedCheck: () => context.navigateTo(
            getSimpleCertificateRoute(
              TypeSimpleCertificateEnum
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
            getSimpleCertificateRoute(
              TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate,
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
          onPressedCheck: () => context
              .navigateTo(const PaymentServiceJudgmentsNotarialActsRoute()),
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
          onPressedCheck: () =>
              context.navigateTo(const ResidenceRegistrationRouterRoute()),
          onPressedView: () {},
        ),
        CircleAvatarCardModel(
          image: Assets.png.certificadoIdentidad.image(),
          title: l10n.cambioNom,
          onPressedCheck: () {},
          onPressedView: () {},
        ),
      ],
    );
  }
}
