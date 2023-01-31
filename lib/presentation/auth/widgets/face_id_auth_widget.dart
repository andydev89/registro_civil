import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/auth_enum/icono_boton_enum.dart';
import 'package:registro_civil_apk/data/extension/auth_extension/icono_boton_extension.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class FaceIDScanWidget extends StatelessWidget {
  const FaceIDScanWidget({
    super.key,
    this.titulo,
    this.child,
    this.columnAlignment,
    this.onTap,
    this.urlImage,
  });
  final String? titulo;
  final Widget? child;
  final MainAxisAlignment? columnAlignment;
  final void Function()? onTap;
  final String? urlImage;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return GestureDetector(
      onTap: onTap,
      child: ScaffoldAuthWidget(
        columnAlignment: columnAlignment ?? MainAxisAlignment.spaceAround,
        enunciado: l10n.escaneando,
        children: [
          if (titulo != null)
            TextoWidget(
              titulo!,
            ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(150),
              border: Border.all(
                color: Colors.blue.shade900,
                width: 10,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.asset(
                urlImage ?? IconoBotonEnum.scanFace.url,
                width: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (child != null) child!,
        ],
      ),
    );
  }
}
