import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/background_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/icon_container_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class FaceIDScanPage extends StatelessWidget {
  const FaceIDScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    const padding = 0.5;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: BackgroundAuth(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextoWidget(
                        l10n.loggin,
                        //'text',
                        mainAxisAlignment: MainAxisAlignment.center,
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    
                    const IconContainerAuthWidget(
                      url: 'assets/img/auth/usuario.png'
                    ),
                    
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: padding,
                          ),
                          
                        ),


                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
