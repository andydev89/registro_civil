import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/auth_card.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_title.dart';

class FingerPrintPage extends StatelessWidget {
  const FingerPrintPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AuthCard(
      scrollContentOnResized: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PrimaryTitle(title: l10n.loggin),
          PrimaryLabel(l10n.colDedSensor),
          Assets.svg.fingerprint.svg(
            width: 150,
            height: 150,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButtonAuth(
                icon: IconoBotonEnum.cedula,
                onPressed: () => context.popRoute(),
              ),
              IconButtonAuth(
                icon: IconoBotonEnum.faceID,
                onPressed: () => context.replaceRoute(const ScanRouterRoute()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
