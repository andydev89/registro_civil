import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/pages/auth/auth_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/finger_print/finger_print_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/finger_print/finger_print_page2.dart';
import 'package:registro_civil_apk/presentation/pages/auth/finger_print/finger_print_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/change_password_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/forgot_password_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/forgot_password_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/login/login_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/register_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_1_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_2_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_3_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_4_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_dni_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_face_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/success_page.dart';
import 'package:registro_civil_apk/presentation/pages/root/root_router_page.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <CustomRoute>[
    //ROOT
    CustomRoute(
      page: RootRouterPage,
      initial: true,
      children: [
        //AUTH
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: AuthRouterPage,
          initial: true,
          children: [
            //LOGIN
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: LoginPage,
              initial: true,
            ),
            //REGISTER
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: RegisterRouterPage,
              children: [
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: Step1Page,
                  initial: true,
                  meta: {'index': 0},
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: Step2Page,
                  meta: {'index': 1},
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: Step3Page,
                  meta: {'index': 2},
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: Step4Page,
                  meta: {'index': 3},
                ),
              ],
            ),
            //FORGOT PASSWORD
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: ForgotPasswordRouterPage,
              children: [
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: ForgotPasswordPage,
                  initial: true,
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: ChangePasswordPage,
                ),
              ],
            ),
            //SCAN
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: ScanRouterPage,
              children: [
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: ScanFacePage,
                  initial: true,
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: ScanDniPage,
                ),
              ],
            ),
            //FINGERPRINT
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: FingerPrintRouterPage,
              children: [
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: FingerPrintPage,
                  initial: true,
                ),
                CustomRoute(
                  transitionsBuilder: TransitionsBuilders.slideLeft,
                  page: FingerPrint2Page,
                ),
              ],
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: SuccessPage,
            ),
          ],
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
