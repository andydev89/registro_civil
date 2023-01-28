import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/background_auth_widget.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/icon_button_auth.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/text_form_field_auth.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/elevated_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/text_button_widget.dart';
import 'package:registro_civil_apk/presentation/widgets_generales/texto_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: TextoWidget(
                        l10n.loggin,
                        mainAxisAlignment: MainAxisAlignment.center,
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextFormFieldAuth(
                      label: 'Número de cédula',
                      prefixIcon: Icons.payment,
                      textInputType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const TextFormFieldAuth(
                      label: 'Contraseña',
                      prefixIcon: Icons.key,
                      obscureText: true,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: TextButtonWidget(
                            title: '¿Olvidó su contraseña?',
                            alignment: Alignment.centerRight,
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                            },
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButtonAuthWidget(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              Navigator.pushNamed(context, 'face_id');
                            },
                            label: 'Face ID',
                            url: 'assets/img/auth/faceid.png',
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          IconButtonAuthWidget(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                            },
                            label: 'Huella',
                            url: 'assets/img/auth/fingerpoint.png',
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: padding,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButtonWidget(
                                  title: 'Iniciar sesión',
                                  onPressed: () {
                                    FocusScope.of(context).unfocus();
                                  },
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          child: TextoWidget(
                            '¿No tiene cuenta?',
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: padding,
                          ),
                          child: TextButtonWidget(
                            title: 'Regístrese aquí',
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                            },
                            fontWeight: FontWeight.bold,
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
