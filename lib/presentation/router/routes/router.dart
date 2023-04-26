import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/enum/commons/procedure_type.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/commons/type_of_service_model.dart';
import 'package:registro_civil_apk/data/models/schedule_turn/receipt_model.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/data/models/simple_certificate/simple_certificate_response.dart';
import 'package:registro_civil_apk/presentation/pages/auth/auth_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/forgot_password_first_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/forgot_password_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/forgot_password/forgot_password_second_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/login/login_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/register_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_1_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_2_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_3_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_4_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/register/step_5_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_face_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/scan/scan_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/auth/widgets/success_page.dart';
import 'package:registro_civil_apk/presentation/pages/home/home_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/home/pages/procedures/procedures_page.dart';
import 'package:registro_civil_apk/presentation/pages/home/pages/services/services_page.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/pages/first_step/attorney/first_step_attorney_page.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/pages/first_step/contracting_party/first_step_contracting_party_page.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/pages/first_step/marriage_celebration_first_step_route.dart';
import 'package:registro_civil_apk/presentation/pages/marriage_celebration/pages/marriage_celebration_route_page.dart';
import 'package:registro_civil_apk/presentation/pages/my_orders/pages/my_order_rejecting_page.dart';
import 'package:registro_civil_apk/presentation/pages/my_turns/pages/my_turns_page.dart';
import 'package:registro_civil_apk/presentation/pages/notification/notification_page.dart';
import 'package:registro_civil_apk/presentation/pages/payment/make_payment_page.dart';
import 'package:registro_civil_apk/presentation/pages/payment/select_payment_page.dart';
import 'package:registro_civil_apk/presentation/pages/payment_service_judgments_notarial_acts/payment_service_judgments_notarial_acts_page.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/pages/request_information_firts_step_page.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/pages/request_information_second_step_page.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/pages/request_information_third_step_page.dart';
import 'package:registro_civil_apk/presentation/pages/residence_registration/residence_registration_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/root/root_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/code_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_first_step/schedule_turn_first_step_familiar_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_first_step/schedule_turn_first_step_personal_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_first_step/schedule_turn_first_step_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/schedule_turn_second_step_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/pages/turn_details_page.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/schedule_turn_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/pages/simple_certificate_first_step/simple_certificate_first_step_familiar_page.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/pages/simple_certificate_first_step/simple_certificate_first_step_personal_page.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/pages/simple_certificate_first_step/simple_certificate_first_step_router_page.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/pages/simple_certificate_second_step/simple_certificate_second_step_page.dart';
import 'package:registro_civil_apk/presentation/pages/simple_certificate/simple_certificate_router_page.dart';
import 'package:registro_civil_apk/presentation/router/routes/auth_guard.dart';

part 'router.gr.dart';

@CustomAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <CustomRoute>[
    //AUTH
    CustomRoute(
      transitionsBuilder: TransitionsBuilders.slideLeft,
      page: AuthRouterPage,
      path: '/auth',
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
              page: ForgotPasswordFirstPage,
              initial: true,
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: ForgotPasswordSecondPage,
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
      initial: true,
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
        //SCHEDULE TURN
        CupertinoRoute(
          guards: [AuthGuard],
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
              page: CodePage,
            ),
            CupertinoRoute(
              page: ScheduleTurnSecondPage,
            ),
            CupertinoRoute(
              page: TurnDetailsPage,
            ),
          ],
        ),
        // SIMPLE CERTIFICATE
        CupertinoRoute(
          guards: [AuthGuard],
          page: SimpleCertificateRouterPage,
          children: [
            CupertinoRoute(
              page: SimpleCertificateFirstStepRouterPage,
              initial: true,
              children: [
                CustomRoute(
                  page: SimpleCertificateFirstStepFamiliarPage,
                  initial: true,
                  transitionsBuilder: TransitionsBuilders.slideRight,
                ),
                CupertinoRoute(
                  page: SimpleCertificateFirstStepPersonalPage,
                ),
              ],
            ),
            CupertinoRoute(
              page: SimpleCertificateSecondStepPage,
            ),
          ],
        ), // MARRIAGE CELEBRATION
        CupertinoRoute(
          guards: [AuthGuard],
          page: MarriageCelebrationRouterPage,
          children: [
            CupertinoRoute(
              page: MarriageCelebrationFirstStepRouterPage,
              initial: true,
              children: [
                CustomRoute(
                  page: FirstStepAttorneyPage,
                  initial: true,
                  transitionsBuilder: TransitionsBuilders.slideRight,
                ),
                CupertinoRoute(
                  page: FirstStepContractingPartyPage,
                ),
              ],
            ),
            // CupertinoRoute(
            //   page: SimpleCertificateSecondStepPage,
            // ),
          ],
        ),
        //RESIDENT REGISTRATION
        CupertinoRoute(
          guards: [AuthGuard],
          page: ResidenceRegistrationRouterPage,
          children: [
            CupertinoRoute(
              page: RequestInformationFirstStepPage,
              initial: true,
            ),
            CupertinoRoute(
              page: RequestInformationSecondStepPage,
            ),
            CupertinoRoute(
              page: RequestInformationThirdStepPage,
            ),
          ],
        ),
        //NOTIFICATION
        CupertinoRoute(
          page: NotificationPage,
        ),
        //MY TURNS
        CupertinoRoute(
          guards: [AuthGuard],
          page: MyTurnsPage,
        ),
        // My OODERS
        CupertinoRoute(
          page: MyOrderRejectingPage,
        ),
        //PAYMENT
        CupertinoRoute(
          page: SelectPaymentPage,
        ),
        CupertinoRoute(
          page: MakePaymentPage,
        ),
        // PaymentServiceJudgmentsNotarialActsPage
        CupertinoRoute(
          guards: [AuthGuard],
          page: PaymentServiceJudgmentsNotarialActsPage,
        ),
      ],
    ),
  ],
)
// extend the generated private router
// class AppRouter extends _$AppRouter {
//   AppRouter() : super();
// }

class AppRouter extends _$AppRouter {
  AppRouter({required super.authGuard});
}
