import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class IconButtonAuthWidget extends StatelessWidget {
  const IconButtonAuthWidget({
    super.key,
    required this.onPressed,
    required this.label,
    required this.url,
  });
  final void Function() onPressed;
  final String label;
  final String url;

  @override
  Widget build(BuildContext context) {
    const size = 30.0;
    const color = Color.fromRGBO(13, 29, 47, 1);
    const widthHeight = 61.0;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        backgroundColor: const Color.fromRGBO(198, 204, 210, 1),
        elevation: 5,
      ),
      onPressed: onPressed,
      child: SizedBox(
        width: widthHeight,
        height: widthHeight,
        child: Column(
          children: [
            Image.asset(
              url,
              width: size,
              height: size,
              fit: BoxFit.cover,
              color: color,
            ),
            const SizedBox(
              height: 10,
            ),
            TextoWidget(
              label,
              color: color,
              fontSize: 16,
            )
          ],
        ),
      ),
    );
  }
}
