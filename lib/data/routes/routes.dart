import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/extension/routes_extension.dart';
import 'package:registro_civil_apk/presentation/auth/cambiar_contrasena.dart';
import 'package:registro_civil_apk/presentation/auth/face_id_page.dart';
import 'package:registro_civil_apk/presentation/auth/fingerpoint_page.dart';
import 'package:registro_civil_apk/presentation/auth/fingerprint_page2.dart';
import 'package:registro_civil_apk/presentation/auth/home_page/nuestros_servicios.dart';
import 'package:registro_civil_apk/presentation/auth/login_page.dart';
import 'package:registro_civil_apk/presentation/auth/olvido_contrasena_page.dart';
import 'package:registro_civil_apk/presentation/auth/register_page/register_page.dart';

final routes = <String, Widget Function(BuildContext)>{
  // '/': (BuildContext context) => new HomePage(),
  RoutesEnum.loginCedula.route: (BuildContext context) => const LoginPage(),
  RoutesEnum.loginFaceId.route: (BuildContext context) => const FaceIDPage(),
  RoutesEnum.loginHuella.route: (BuildContext context) => const HuellaPage(),
  RoutesEnum.loginRegister.route: (BuildContext context) =>
      const RegisterPage(),
  RoutesEnum.olvidoContrasena.route: (BuildContext context) =>
      const OlvidoContrasenaPage(),
  RoutesEnum.cambiarContrasena.route: (BuildContext context) =>
      const CambiarContrasenaPage(),
  RoutesEnum.loginHuella2.route: (BuildContext context) =>
      const Huella2Page(),
  RoutesEnum.nuestrosServicios.route: (BuildContext context) =>
      const ServiciosPage(),
      
      
};
