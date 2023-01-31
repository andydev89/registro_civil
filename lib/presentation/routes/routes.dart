import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/extension/routes_extension.dart';
import 'package:registro_civil_apk/presentation/auth/face_id_page.dart';
import 'package:registro_civil_apk/presentation/auth/huella_page.dart';
import 'package:registro_civil_apk/presentation/auth/login_page.dart';
import 'package:registro_civil_apk/presentation/auth/widgets/stepper_auth/stepper_aut_widget.dart';

import '../auth/face_id_scan.dart';

final routes = <String, Widget Function(BuildContext)>{
  // '/': (BuildContext context) => new HomePage(),
  RoutesEnum.loginCedula.route: (BuildContext context) => const LoginPage(),
  RoutesEnum.loginFaceId.route: (BuildContext context) => const FaceIDPage(),
  RoutesEnum.loginFaceIdScan.route: (BuildContext context) => const FaceIDScanPage(),
  RoutesEnum.loginHuella.route: (BuildContext context) => const HuellaPage(),
  RoutesEnum.loginStepper.route: (BuildContext context) =>
      const StepperAuthWidget(),
};
