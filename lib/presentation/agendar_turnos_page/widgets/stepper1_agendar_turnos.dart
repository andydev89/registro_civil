import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class Stepper1AgendarTurnos extends ConsumerWidget {
  const Stepper1AgendarTurnos({
    super.key,
    required this.color,
  });
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        element(
          context,
          titulo: l10n.ciudad,
          placeholder: l10n.selCiudad,
        ),
        element(
          context,
          titulo: l10n.agencia,
          placeholder: l10n.selAgencia,
        ),
        element(
          context,
          titulo: l10n.mesTurno,
          placeholder: l10n.selMes,
        ),
      ],
    );
  }

  Widget element(
    BuildContext context, {
    required String titulo,
    double fontSize = 20.0,
    required String placeholder,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoWidget(
            titulo,
            color: color,
            fontSize: fontSize,
          ),
          const SizedBox(
            height: 10,
          ),
          DropdownButtonFormField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: placeholder,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: fontSizeDefault,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            ),
            items: const [
              DropdownMenuItem(
                value: 'Hola',
                child: TextoWidget(
                  'Hola',
                  color: Colors.grey,
                ),
              ),
            ],
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
