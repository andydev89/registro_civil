import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/extension/routes_extension.dart';
import 'package:registro_civil_apk/presentation/auth/face_id_page.dart';
import 'package:registro_civil_apk/presentation/auth/face_id_scan.dart';
import 'package:registro_civil_apk/presentation/auth/fingerpoint_page.dart';
import 'package:registro_civil_apk/presentation/auth/login_page.dart';
import 'package:registro_civil_apk/presentation/auth/register_page/register_page.dart';

import '../auth/cambiar_contrasena.dart';
import '../auth/fingerprint_page2.dart';
import '../auth/nuestros_servicios.dart';
import '../auth/olvido_contrasena.dart';

final routes = <String, Widget Function(BuildContext)>{
  // '/': (BuildContext context) => new HomePage(),
  RoutesEnum.loginCedula.route: (BuildContext context) => const LoginPage(),
  RoutesEnum.loginFaceId.route: (BuildContext context) => const FaceIDPage(),
  RoutesEnum.loginHuella.route: (BuildContext context) => const HuellaPage(),
  RoutesEnum.loginRegister.route: (BuildContext context) =>
      const RegisterPage(),
  RoutesEnum.loginFaceIdScan.route: (BuildContext context) =>
      const FaceIDScanPage(),
  RoutesEnum.olvidoContrasena.route: (BuildContext context) =>
      const OlvidoContrasenaPage(),
  RoutesEnum.cambiarContrasena.route: (BuildContext context) =>
      const CambiarContrasenaPage(),
  RoutesEnum.loginHuella2.route: (BuildContext context) =>
      const Huella2Page(),
  RoutesEnum.nuestrosServicios.route: (BuildContext context) =>
      const ServiciosPage(),
      
      
};
