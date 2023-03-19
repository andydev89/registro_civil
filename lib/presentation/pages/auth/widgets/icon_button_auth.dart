import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_label.dart';

class IconButtonAuth extends StatelessWidget {
  const IconButtonAuth({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final void Function()? onPressed;
  final IconoBotonEnum icon;

  @override
  Widget build(BuildContext context) {
    const color = Color.fromRGBO(13, 29, 47, 1);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        backgroundColor: grey,
        elevation: 5,
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: 60,
        height: 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon.image(),
            const SizedBox(
              height: 10,
            ),
            PrimaryLabel(
              icon.label(context),
              color: color,
              fontSize: 11.5,
            ),
          ],
        ),
      ),
    );
  }
}
