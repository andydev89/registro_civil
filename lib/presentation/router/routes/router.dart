import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/notification_enum/notification_type.dart';
import 'package:registro_civil_apk/data/enum/schedule_shift/service_type.dart';
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
import 'package:registro_civil_apk/presentation/pages/auth/register/step_5_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_dni_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_face_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/success_page.dart';
import 'package:registro_civil_apk/presentation/pages/home/home_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/home/pages/procedures/procedures_page.dart';
import 'package:registro_civil_apk/presentation/pages/home/pages/services/services_page.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/my_turns_page.dart';
import 'package:registro_civil_apk/presentation/pages/notification/notification_page.dart';
import 'package:registro_civil_apk/presentation/pages/root/root_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_first_step/schedule_turn_first_step_familiar_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_first_step/schedule_turn_first_step_personal_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_first_step/schedule_turn_first_step_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_second_step/schedule_turn_second_step_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_thrid_step/schedule_turn_third_step_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/turn_details/turn_details_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/schedule_turn_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/test/test_page.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <CustomRoute>[
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
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: Step5Page,
              meta: {'index': 4},
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
    //ROOT
    CustomRoute(
      page: RootRouterPage,
      children: [
        //HOME
        CupertinoRoute(
          page: HomeRouterPage,
          initial: true,
          children: [
            CupertinoRoute(
              initial: true,
              page: ServicesPage,
            ),
            CupertinoRoute(
              page: ProceduresPage,
            ),
          ],
        ),
        //SCHEDULE SHIFT
        CupertinoRoute(
          page: ScheduleTurnRouterPage,
          children: [
            CupertinoRoute(
              page: ScheduleTurnFirstStepRouterPage,
              initial: true,
              children: [
                CustomRoute(
                  page: ScheduleTurnFirstStepPersonalPage,
                  initial: true,
                  transitionsBuilder: TransitionsBuilders.slideRight,
                ),
                CupertinoRoute(
                  page: ScheduleTurnFirstStepFamiliarPage,
                ),
              ],
            ),
            CupertinoRoute(
              page: ScheduleTurnSecondStepPage,
            ),
            CupertinoRoute(
              page: ScheduleTurnThirdStepPage,
            ),
            CupertinoRoute(
              page: ShiftDetailsPage,
            ),
          ],
        ),
        //NOTIFICATION
        CupertinoRoute(
          page: NotificationPage,
        ),
        //MY TURNS
        CupertinoRoute(
          page: MyTurnsPage,
        ),
        // TEST
        CustomRoute(
          page: TexterPage,
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
