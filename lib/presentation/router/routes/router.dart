import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/presentation/pages/auth/auth_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/finger_print/finger_print_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/change_password_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/forgot_password_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/forgot_password_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/login/login_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/register_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_router_page.dart';
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
              page: RegisterPage,
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
            ),
            //FINGERPRINT
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: FingerPrintRouterPage,
            ),
          ],
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
