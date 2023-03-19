import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/circular_icon_auth.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class ScanFacePage extends StatelessWidget {
  const ScanFacePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AuthCard(
      scrollContentOnResized: true,
      child: Column(
        children: [
          PrimaryTitle(
            title: l10n.loggin,
          ),
          CircularIconAuth(
            child: Assets.svg.faceId.svg(
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ).verticalPadding(30),
          PrimaryButton(
            title: l10n.escRostro,
            width: double.maxFinite,
            onPressed: () {
              //TODO escanear rostro
            },
          ).verticalPadding(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButtonAuth(
                icon: IconoBotonEnum.cedula,
                onPressed: () => context.popRoute(),
              ),
              IconButtonAuth(
                icon: IconoBotonEnum.huella,
                onPressed: () =>
                    context.replaceRoute(const FingerPrintRouterRoute()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
