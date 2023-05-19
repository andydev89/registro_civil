import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/presentation/pages/pages.dart';
import 'package:registro_civil_apk/presentation/router/guards/guards.dart';

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
        ),
        // MARRIAGE CELEBRATION
        CupertinoRoute(
          guards: [AuthGuard, AgreementGuard],
          meta: {agreementTypeMetaName: 2},
          page: MarriageCelebrationRouterPage,
          children: [
            CustomRoute(
              initial: true,
              page: MarriageCelebrationPrincipalPage,
              transitionsBuilder: TransitionsBuilders.slideRight,
            ),
            CustomRoute(
              page: RejectionStepMarriageCelebrationPage,
              transitionsBuilder: TransitionsBuilders.slideRight,
            ),
            CustomRoute(
              page: MarriageCelebrationStepperPage,
              transitionsBuilder: TransitionsBuilders.slideRight,
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
                    CustomRoute(
                      page: FirstStepContractingPartyPage,
                      transitionsBuilder: TransitionsBuilders.slideLeft,
                    ),
                  ],
                ),
                CustomRoute(
                  page: MarriageCelebrationAgencyPage,
                  transitionsBuilder: TransitionsBuilders.slideRight,
                ),
                CupertinoRoute(
                  page: MarriageCelebrationSecondStepRouterPage,
                  children: [
                    CustomRoute(
                      page: SecondStepAtHeadquarterPage,
                      initial: true,
                      transitionsBuilder: TransitionsBuilders.slideRight,
                      children: [
                        CustomRoute(
                          page: WitnessPage,
                          initial: true,
                          transitionsBuilder: TransitionsBuilders.slideRight,
                        ),
                      ],
                    ),
                    CustomRoute(
                      page: SecondStepOffSitePage,
                      transitionsBuilder: TransitionsBuilders.slideLeft,
                    ),
                  ],
                ),
                CupertinoRoute(
                  page: MarriageCelebrationThirdStepRouterPage,
                  children: [
                    CustomRoute(
                      initial: true,
                      page: ThirdStepContractingPartyPage,
                      transitionsBuilder: TransitionsBuilders.slideRight,
                      children: [
                        CustomRoute(
                          page: ContractingPartyPage,
                          initial: true,
                          transitionsBuilder: TransitionsBuilders.slideRight,
                        ),
                      ],
                    ),
                  ],
                ),
                CustomRoute(
                  page: MarriageCelebrationFourthStepRouterPage,
                  transitionsBuilder: TransitionsBuilders.slideRight,
                ),
              ],
            ),
          ],
        ),
        //RESIDENT REGISTRATION
        CupertinoRoute(
          guards: [AuthGuard, AgreementGuard],
          meta: {agreementTypeMetaName: 1},
          page: ResidenceRegistrationRouterPage,
          children: [
            CupertinoRoute(
              page: MainPageResicenceRegistrationPage,
              initial: true,
            ),
            CupertinoRoute(
              page: ResidencePage,
              children: [
                CupertinoRoute(
                  page: FirstStepResidencePage,
                  initial: true,
                ),
                CupertinoRoute(
                  page: SecondStepResidencePage,
                ),
              ],
            ),
            CupertinoRoute(
              page: DependentPage,
              children: [
                CupertinoRoute(
                  page: MainPageDependentPage,
                  initial: true,
                ),
                CupertinoRoute(
                  page: FirstStepDependentPage,
                ),
              ],
            ),
          ],
        ),
        //CAMBIO DE NOMBRE
        CupertinoRoute(
          guards: [AuthGuard, AgreementGuard],
          meta: {agreementTypeMetaName: 0},
          page: ChangeOfNameRouterPage,
          children: [
            // CupertinoRoute(
            //   page: TermAndUsesConditionsPage,
            //   initial: true,
            // ),
            CupertinoRoute(
              page: ChangeOfNameFirstStepPage,
              initial: true,
            ),
            CupertinoRoute(
              page: VerifyInformationPage,
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
        // MY ORDERS
        CupertinoRoute(
          page: MyOrdersPage,
        ),
        // MY ORDERS REJECTING
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
        CupertinoRoute(
          page: WebviewPaymentPage,
        ),
        CupertinoRoute(
          page: ChoosePaymentMethodPage,
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
  AppRouter({
    required super.authGuard,
    required super.agreementGuard,
  });
}
