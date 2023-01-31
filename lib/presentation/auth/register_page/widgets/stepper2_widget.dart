import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/riverpod/declaration/auth_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/circle_icon_auth.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scan_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/text_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Stepper2 extends ConsumerWidget {
  const Stepper2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: TextoWidget(
            l10n.capIdenDigBiometrica,
            maxlines: 2,
          ),
        ),
        fila(
          lista: [
            const CircleIconAuth(
              titulo: 'rostro',
              iconos: [IconoBotonEnum.faceID],
            ),
            const CircleIconAuth(
              titulo: 'Rostro y \ncédula',
              iconos: [IconoBotonEnum.faceID, IconoBotonEnum.cedula],
            ),
          ],
        ),
        fila(
          lista: [
            const CircleIconAuth(
              titulo: 'Adverso de \ncédula',
              iconos: [IconoBotonEnum.cedula],
            ),
            const CircleIconAuth(
              titulo: 'Reverso de \ncédula',
              iconos: [IconoBotonEnum.cedula],
            ),
          ],
        ),
        Column(
          children: [
            ElevatedButtonWidget(
              title: 'Escanear',
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute<Widget>(
                  builder: (_) => const ScanAuthWidget(),
                ),
              ),
              width: double.maxFinite,
            ),
            TextButtonWidget(
              title: 'Saltar paso',
              onPressed: () => ref.read(authStepperRiv.notifier).state++,
              width: double.maxFinite,
            ),
          ],
        ),
      ],
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
