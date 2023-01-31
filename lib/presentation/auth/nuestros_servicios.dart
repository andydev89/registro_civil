import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/scaffold_serv_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/text_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class ServiciosPage extends StatelessWidget {
  const ServiciosPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = 0.5;
    return GridView.count(
          crossAxisCount: 3 ,
          children: const <Widget> [
            Icon(
              Icons.favorite,
              color: Color.fromRGBO(13, 29, 47, 1),
              size: 60.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ],
          
          // List.generate(9,(index){
          //   return Container(
          //     child: Card(
          //       color: Colors.blue,
          //     ),
          //   );
          // }),


        );
    
    // ScaffoldServWidget(
    //   enunciado: l10n.nuestrosServicios,
    //   children: [

        

    //   ],
    // );
  }
}
