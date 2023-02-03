import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/extension/auth_extension/icono_boton_extension.dart';
import 'package:registro_civil_apk/data/extension/routes_extension.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/auth_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth_page/widgets/circle_icon_auth.dart';
import 'package:registro_civil_apk/presentation/auth_page/widgets/face_id_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/text_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Stepper2 extends ConsumerWidget {
  const Stepper2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final cargoData = ref.watch(authStepper2Data);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TextoWidget(
            l10n.capIdenDigBiometrica,
          ),
        ),
        fila(
          lista: [
            CircleIconAuth(
              titulo: l10n.rostro,
              rutas: cargoData
                  ? ['assets/img/auth/usuario.jpg']
                  : [IconoBotonEnum.faceID.url],
            ),
            CircleIconAuth(
              titulo: l10n.rosCedula,
              rutas: cargoData
                  ? ['assets/img/auth/rostro_cedula.png']
                  : [IconoBotonEnum.faceID.url, IconoBotonEnum.cedula.url],
            ),
          ],
        ),
        Column(
          children: [
            ElevatedButtonWidget(
              title: cargoData ? l10n.siguiente : l10n.escanear,
              onPressed: () {
                if (cargoData) {
                  ref.read(authStepperRiv.notifier).state++;
                  return;
                }
                cambiarPagina(
                  context: context,
                  l10n: l10n.girCabeza,
                  perfect: l10n.perfecto,
                  onTap: () => cambiarPagina(
                    context: context,
                    urlImage: 'assets/img/auth/rostro_cedula.png',
                    l10n: l10n.muesRosCedula,
                    perfect: l10n.perfecto,
                    onTap: () {
                      ref.read(authStepper2Data.notifier).state = true;
                      Navigator.restorablePopAndPushNamed(
                        context,
                        RoutesEnum.loginRegister.route,
                      );
                    },
                  ),
                );
              },
              width: double.maxFinite,
            ),
            if (!cargoData)
              TextButtonWidget(
                title: l10n.salPaso,
                onPressed: () => ref.read(authStepperRiv.notifier).state++,
                width: double.maxFinite,
              ),
          ],
        ),
      ],
    );
  }

  Future<Widget?> cambiarPagina({
    required BuildContext context,
    required String l10n,
    required void Function() onTap,
    required String perfect,
    String? urlImage,
  }) {
    return Navigator.push(
      context,
      MaterialPageRoute<Widget>(
        builder: (_) => FaceIDScanWidget(
          titulo: l10n,
          urlImage: urlImage,
          onTap: onTap,
          child: Column(
            children: [
              Icon(Icons.check_circle, color: Colors.blue.shade900, size: 40),
              TextoWidget(perfect),
            ],
          ),
        ),
      ),
    );
  }

  Row fila({required List<CircleIconAuth> lista}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: lista,
    );
  }
}
