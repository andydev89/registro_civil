import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/auth/face_id_page.dart';
import 'package:registro_civil_apk/presentation/auth/huella_page.dart';
import 'package:registro_civil_apk/presentation/auth/login_page.dart';

final routes = {
  // '/': (BuildContext context) => new HomePage(),
  'login_cedula': (BuildContext context) => const LoginPage(),
  'login_face_id': (BuildContext context) => const FaceIDPage(),
  'login_huella': (BuildContext context) => const HuellaPage(),
};
