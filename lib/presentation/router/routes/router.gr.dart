// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.authGuard,
  }) : super(navigatorKey);

  final AuthGuard authGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    AuthRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AuthRouterPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RootRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const RootRouterPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: LoginPage(
          key: args.key,
          onLogin: args.onLogin,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RegisterRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const RegisterRouterPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgotPasswordRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordRouterPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ScanRouterPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SuccessRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SuccessPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Step1Route.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const Step1Page(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Step2Route.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const Step2Page(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Step3Route.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const Step3Page(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Step4Route.name: (routeData) {
      final args = routeData.argsAs<Step4RouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: Step4Page(
          key: args.key,
          command: args.command,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Step5Route.name: (routeData) {
      final args = routeData.argsAs<Step5RouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: Step5Page(
          key: args.key,
          code: args.code,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgotPasswordFirstRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordFirstPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgotPasswordSecondRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordSecondPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScanFaceRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ScanFacePage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const HomeRouterPage(),
      );
    },
    ScheduleTurnRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ScheduleTurnRouterPage(),
      );
    },
    SimpleCertificateRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const SimpleCertificateRouterPage(),
      );
    },
    MarriageCelebrationRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MarriageCelebrationRouterPage(),
      );
    },
    ResidenceRegistrationRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ResidenceRegistrationRouterPage(),
      );
    },
    ChangeOfNameRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ChangeOfNameRouterPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: NotificationPage(
          key: args.key,
          title: args.title,
          subtitle: args.subtitle,
          message: args.message,
          bottonTitle: args.bottonTitle,
          buttonText: args.buttonText,
          notificationType: args.notificationType,
          onTap: args.onTap,
          description: args.description,
          bottomText: args.bottomText,
          onPressed: args.onPressed,
        ),
      );
    },
    MyTurnsRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MyTurnsPage(),
      );
    },
    MyOrdersRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MyOrdersPage(),
      );
    },
    MyOrderRejectingRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MyOrderRejectingPage(),
      );
    },
    SelectPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<SelectPaymentRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: SelectPaymentPage(
          key: args.key,
          requestNumber: args.requestNumber,
          totalToPay: args.totalToPay,
        ),
      );
    },
    MakePaymentRoute.name: (routeData) {
      final args = routeData.argsAs<MakePaymentRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: MakePaymentPage(
          key: args.key,
          requestNumber: args.requestNumber,
          buttonText: args.buttonText,
          service: args.service,
          onTapSuccessPayment: args.onTapSuccessPayment,
          onTapFailedPayment: args.onTapFailedPayment,
        ),
      );
    },
    WebviewPaymentRoute.name: (routeData) {
      final args = routeData.argsAs<WebviewPaymentRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: WebviewPaymentPage(
          key: args.key,
          url: args.url,
          onPageFinished: args.onPageFinished,
        ),
      );
    },
    PaymentServiceJudgmentsNotarialActsRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const PaymentServiceJudgmentsNotarialActsPage(),
      );
    },
    ServicesRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ServicesPage(),
      );
    },
    ProceduresRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ProceduresPage(),
      );
    },
    ScheduleTurnFirstStepRouterRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleTurnFirstStepRouterRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ScheduleTurnFirstStepRouterPage(
          key: args.key,
          typeOfService: args.typeOfService,
        ),
      );
    },
    CodeRoute.name: (routeData) {
      final args = routeData.argsAs<CodeRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: CodePage(
          key: args.key,
          typeOfService: args.typeOfService,
          includMe: args.includMe,
          procedureType: args.procedureType,
          relatives: args.relatives,
        ),
      );
    },
    ScheduleTurnSecondRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleTurnSecondRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ScheduleTurnSecondPage(
          key: args.key,
          paymentMethod: args.paymentMethod,
          typeOfService: args.typeOfService,
          includMe: args.includMe,
          procedureType: args.procedureType,
          relatives: args.relatives,
        ),
      );
    },
    TurnDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TurnDetailsRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: TurnDetailsPage(
          key: args.key,
          city: args.city,
          agency: args.agency,
          typeOfService: args.typeOfService,
          date: args.date,
          time: args.time,
          paymentMethod: args.paymentMethod,
          totalToPay: args.totalToPay,
          receipt: args.receipt,
        ),
      );
    },
    ScheduleTurnFirstStepPersonalRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleTurnFirstStepPersonalRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ScheduleTurnFirstStepPersonalPage(
          key: args.key,
          typeOfService: args.typeOfService,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScheduleTurnFirstStepFamiliarRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleTurnFirstStepFamiliarRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ScheduleTurnFirstStepFamiliarPage(
          key: args.key,
          typeOfService: args.typeOfService,
        ),
      );
    },
    SimpleCertificateFirstStepRouterRoute.name: (routeData) {
      final args =
          routeData.argsAs<SimpleCertificateFirstStepRouterRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: SimpleCertificateFirstStepRouterPage(
          typeSimpleCertificate: args.typeSimpleCertificate,
          key: args.key,
        ),
      );
    },
    SimpleCertificateSecondStepRoute.name: (routeData) {
      final args = routeData.argsAs<SimpleCertificateSecondStepRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: SimpleCertificateSecondStepPage(
          simpleCertificateResponse: args.simpleCertificateResponse,
          key: args.key,
        ),
      );
    },
    SimpleCertificateFirstStepFamiliarRoute.name: (routeData) {
      final args =
          routeData.argsAs<SimpleCertificateFirstStepFamiliarRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: SimpleCertificateFirstStepFamiliarPage(
          typeSimpleCertificate: args.typeSimpleCertificate,
          key: args.key,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SimpleCertificateFirstStepPersonalRoute.name: (routeData) {
      final args =
          routeData.argsAs<SimpleCertificateFirstStepPersonalRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: SimpleCertificateFirstStepPersonalPage(
          typeSimpleCertificate: args.typeSimpleCertificate,
          key: args.key,
        ),
      );
    },
    MarriageCelebrationFirstStepRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MarriageCelebrationFirstStepRouterPage(),
      );
    },
    MarriageCelebrationAgencyRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const MarriageCelebrationAgencyPage(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarriageCelebrationSecondStepRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MarriageCelebrationSecondStepRouterPage(),
      );
    },
    MarriageCelebrationThirdStepRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MarriageCelebrationThirdStepRouterPage(),
      );
    },
    MarriageCelebrationFourthStepRouterRoute.name: (routeData) {
      final args =
          routeData.argsAs<MarriageCelebrationFourthStepRouterRouteArgs>(
              orElse: () =>
                  const MarriageCelebrationFourthStepRouterRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: MarriageCelebrationFourthStepRouterPage(
          key: args.key,
          firstContractParty: args.firstContractParty,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FirstStepAttorneyRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FirstStepAttorneyPage(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FirstStepContractingPartyRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FirstStepContractingPartyPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SecondStepAtHeadquarterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SecondStepAtHeadquarterPage(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SecondStepOffSiteRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const SecondStepOffSitePage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    WitnessRoute.name: (routeData) {
      final args = routeData.argsAs<WitnessRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: WitnessPage(
          key: args.key,
          indexWitness: args.indexWitness,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ThirdStepContractingPartyRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ThirdStepContractingPartyPage(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ContractingPartyRoute.name: (routeData) {
      final args = routeData.argsAs<ContractingPartyRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ContractingPartyPage(
          key: args.key,
          indexContractingParty: args.indexContractingParty,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainRouteResicenceRegistrationRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MainPageResicenceRegistrationPage(),
      );
    },
    FirstStepResidenceRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const FirstStepResidencePage(),
      );
    },
    SecondStepResidenceRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const SecondStepResidencePage(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          AuthRouterRoute.name,
          path: '/auth',
          children: [
            RouteConfig(
              LoginRoute.name,
              path: '',
              parent: AuthRouterRoute.name,
            ),
            RouteConfig(
              RegisterRouterRoute.name,
              path: 'register-router-page',
              parent: AuthRouterRoute.name,
              children: [
                RouteConfig(
                  Step1Route.name,
                  path: '',
                  parent: RegisterRouterRoute.name,
                  meta: <String, dynamic>{'index': 0},
                ),
                RouteConfig(
                  Step2Route.name,
                  path: 'step2-page',
                  parent: RegisterRouterRoute.name,
                  meta: <String, dynamic>{'index': 1},
                ),
                RouteConfig(
                  Step3Route.name,
                  path: 'step3-page',
                  parent: RegisterRouterRoute.name,
                  meta: <String, dynamic>{'index': 2},
                ),
                RouteConfig(
                  Step4Route.name,
                  path: 'step4-page',
                  parent: RegisterRouterRoute.name,
                  meta: <String, dynamic>{'index': 3},
                ),
                RouteConfig(
                  Step5Route.name,
                  path: 'step5-page',
                  parent: RegisterRouterRoute.name,
                  meta: <String, dynamic>{'index': 4},
                ),
              ],
            ),
            RouteConfig(
              ForgotPasswordRouterRoute.name,
              path: 'forgot-password-router-page',
              parent: AuthRouterRoute.name,
              children: [
                RouteConfig(
                  ForgotPasswordFirstRoute.name,
                  path: '',
                  parent: ForgotPasswordRouterRoute.name,
                ),
                RouteConfig(
                  ForgotPasswordSecondRoute.name,
                  path: 'forgot-password-second-page',
                  parent: ForgotPasswordRouterRoute.name,
                ),
              ],
            ),
            RouteConfig(
              ScanRouterRoute.name,
              path: 'scan-router-page',
              parent: AuthRouterRoute.name,
              children: [
                RouteConfig(
                  ScanFaceRoute.name,
                  path: '',
                  parent: ScanRouterRoute.name,
                )
              ],
            ),
            RouteConfig(
              SuccessRoute.name,
              path: 'success-page',
              parent: AuthRouterRoute.name,
            ),
          ],
        ),
        RouteConfig(
          RootRouterRoute.name,
          path: '/',
          children: [
            RouteConfig(
              HomeRouterRoute.name,
              path: '',
              parent: RootRouterRoute.name,
              children: [
                RouteConfig(
                  ServicesRoute.name,
                  path: '',
                  parent: HomeRouterRoute.name,
                ),
                RouteConfig(
                  ProceduresRoute.name,
                  path: 'procedures-page',
                  parent: HomeRouterRoute.name,
                ),
              ],
            ),
            RouteConfig(
              ScheduleTurnRouterRoute.name,
              path: 'schedule-turn-router-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
              children: [
                RouteConfig(
                  ScheduleTurnFirstStepRouterRoute.name,
                  path: '',
                  parent: ScheduleTurnRouterRoute.name,
                  children: [
                    RouteConfig(
                      ScheduleTurnFirstStepPersonalRoute.name,
                      path: '',
                      parent: ScheduleTurnFirstStepRouterRoute.name,
                    ),
                    RouteConfig(
                      ScheduleTurnFirstStepFamiliarRoute.name,
                      path: 'schedule-turn-first-step-familiar-page',
                      parent: ScheduleTurnFirstStepRouterRoute.name,
                    ),
                  ],
                ),
                RouteConfig(
                  CodeRoute.name,
                  path: 'code-page',
                  parent: ScheduleTurnRouterRoute.name,
                ),
                RouteConfig(
                  ScheduleTurnSecondRoute.name,
                  path: 'schedule-turn-second-page',
                  parent: ScheduleTurnRouterRoute.name,
                ),
                RouteConfig(
                  TurnDetailsRoute.name,
                  path: 'turn-details-page',
                  parent: ScheduleTurnRouterRoute.name,
                ),
              ],
            ),
            RouteConfig(
              SimpleCertificateRouterRoute.name,
              path: 'simple-certificate-router-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
              children: [
                RouteConfig(
                  SimpleCertificateFirstStepRouterRoute.name,
                  path: '',
                  parent: SimpleCertificateRouterRoute.name,
                  children: [
                    RouteConfig(
                      SimpleCertificateFirstStepFamiliarRoute.name,
                      path: '',
                      parent: SimpleCertificateFirstStepRouterRoute.name,
                    ),
                    RouteConfig(
                      SimpleCertificateFirstStepPersonalRoute.name,
                      path: 'simple-certificate-first-step-personal-page',
                      parent: SimpleCertificateFirstStepRouterRoute.name,
                    ),
                  ],
                ),
                RouteConfig(
                  SimpleCertificateSecondStepRoute.name,
                  path: 'simple-certificate-second-step-page',
                  parent: SimpleCertificateRouterRoute.name,
                ),
              ],
            ),
            RouteConfig(
              MarriageCelebrationRouterRoute.name,
              path: 'marriage-celebration-router-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
              children: [
                RouteConfig(
                  MarriageCelebrationFirstStepRouterRoute.name,
                  path: '',
                  parent: MarriageCelebrationRouterRoute.name,
                  children: [
                    RouteConfig(
                      FirstStepAttorneyRoute.name,
                      path: '',
                      parent: MarriageCelebrationFirstStepRouterRoute.name,
                    ),
                    RouteConfig(
                      FirstStepContractingPartyRoute.name,
                      path: 'first-step-contracting-party-page',
                      parent: MarriageCelebrationFirstStepRouterRoute.name,
                    ),
                  ],
                ),
                RouteConfig(
                  MarriageCelebrationAgencyRoute.name,
                  path: 'marriage-celebration-agency-page',
                  parent: MarriageCelebrationRouterRoute.name,
                ),
                RouteConfig(
                  MarriageCelebrationSecondStepRouterRoute.name,
                  path: 'marriage-celebration-second-step-router-page',
                  parent: MarriageCelebrationRouterRoute.name,
                  children: [
                    RouteConfig(
                      SecondStepAtHeadquarterRoute.name,
                      path: '',
                      parent: MarriageCelebrationSecondStepRouterRoute.name,
                      children: [
                        RouteConfig(
                          WitnessRoute.name,
                          path: '',
                          parent: SecondStepAtHeadquarterRoute.name,
                        )
                      ],
                    ),
                    RouteConfig(
                      SecondStepOffSiteRoute.name,
                      path: 'second-step-off-site-page',
                      parent: MarriageCelebrationSecondStepRouterRoute.name,
                    ),
                  ],
                ),
                RouteConfig(
                  MarriageCelebrationThirdStepRouterRoute.name,
                  path: 'marriage-celebration-third-step-router-page',
                  parent: MarriageCelebrationRouterRoute.name,
                  children: [
                    RouteConfig(
                      ThirdStepContractingPartyRoute.name,
                      path: '',
                      parent: MarriageCelebrationThirdStepRouterRoute.name,
                      children: [
                        RouteConfig(
                          ContractingPartyRoute.name,
                          path: '',
                          parent: ThirdStepContractingPartyRoute.name,
                        )
                      ],
                    )
                  ],
                ),
                RouteConfig(
                  MarriageCelebrationFourthStepRouterRoute.name,
                  path: 'marriage-celebration-fourth-step-router-page',
                  parent: MarriageCelebrationRouterRoute.name,
                ),
              ],
            ),
            RouteConfig(
              ResidenceRegistrationRouterRoute.name,
              path: 'residence-registration-router-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
              children: [
                RouteConfig(
                  MainRouteResicenceRegistrationRoute.name,
                  path: '',
                  parent: ResidenceRegistrationRouterRoute.name,
                ),
                RouteConfig(
                  FirstStepResidenceRoute.name,
                  path: 'first-step-residence-page',
                  parent: ResidenceRegistrationRouterRoute.name,
                ),
                RouteConfig(
                  SecondStepResidenceRoute.name,
                  path: 'second-step-residence-page',
                  parent: ResidenceRegistrationRouterRoute.name,
                ),
              ],
            ),
            RouteConfig(
              ChangeOfNameRouterRoute.name,
              path: 'change-of-name-router-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
              children: [
                RouteConfig(
                  TermAndUsesConditionsRoute.name,
                  path: '',
                  parent: ChangeOfNameRouterRoute.name,
                ),
                RouteConfig(
                  ChangeOfNameFirstStepRoute.name,
                  path: 'change-of-name-first-step-page',
                  parent: ChangeOfNameRouterRoute.name,
                ),
              ],
            ),
            RouteConfig(
              NotificationRoute.name,
              path: 'notification-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              MyTurnsRoute.name,
              path: 'my-turns-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
            ),
            RouteConfig(
              MyOrdersRoute.name,
              path: 'my-orders-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              MyOrderRejectingRoute.name,
              path: 'my-order-rejecting-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              SelectPaymentRoute.name,
              path: 'select-payment-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              MakePaymentRoute.name,
              path: 'make-payment-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              WebviewPaymentRoute.name,
              path: 'webview-payment-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              PaymentServiceJudgmentsNotarialActsRoute.name,
              path: 'payment-service-judgments-notarial-acts-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [AuthRouterPage]
class AuthRouterRoute extends PageRouteInfo<void> {
  const AuthRouterRoute({List<PageRouteInfo>? children})
      : super(
          AuthRouterRoute.name,
          path: '/auth',
          initialChildren: children,
        );

  static const String name = 'AuthRouterRoute';
}

/// generated route for
/// [RootRouterPage]
class RootRouterRoute extends PageRouteInfo<void> {
  const RootRouterRoute({List<PageRouteInfo>? children})
      : super(
          RootRouterRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'RootRouterRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    required void Function(
      BuildContext,
      bool,
    )
        onLogin,
  }) : super(
          LoginRoute.name,
          path: '',
          args: LoginRouteArgs(
            key: key,
            onLogin: onLogin,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onLogin,
  });

  final Key? key;

  final void Function(
    BuildContext,
    bool,
  ) onLogin;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [RegisterRouterPage]
class RegisterRouterRoute extends PageRouteInfo<void> {
  const RegisterRouterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRouterRoute.name,
          path: 'register-router-page',
          initialChildren: children,
        );

  static const String name = 'RegisterRouterRoute';
}

/// generated route for
/// [ForgotPasswordRouterPage]
class ForgotPasswordRouterRoute extends PageRouteInfo<void> {
  const ForgotPasswordRouterRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRouterRoute.name,
          path: 'forgot-password-router-page',
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRouterRoute';
}

/// generated route for
/// [ScanRouterPage]
class ScanRouterRoute extends PageRouteInfo<void> {
  const ScanRouterRoute({List<PageRouteInfo>? children})
      : super(
          ScanRouterRoute.name,
          path: 'scan-router-page',
          initialChildren: children,
        );

  static const String name = 'ScanRouterRoute';
}

/// generated route for
/// [SuccessPage]
class SuccessRoute extends PageRouteInfo<void> {
  const SuccessRoute()
      : super(
          SuccessRoute.name,
          path: 'success-page',
        );

  static const String name = 'SuccessRoute';
}

/// generated route for
/// [Step1Page]
class Step1Route extends PageRouteInfo<void> {
  const Step1Route()
      : super(
          Step1Route.name,
          path: '',
        );

  static const String name = 'Step1Route';
}

/// generated route for
/// [Step2Page]
class Step2Route extends PageRouteInfo<void> {
  const Step2Route()
      : super(
          Step2Route.name,
          path: 'step2-page',
        );

  static const String name = 'Step2Route';
}

/// generated route for
/// [Step3Page]
class Step3Route extends PageRouteInfo<void> {
  const Step3Route()
      : super(
          Step3Route.name,
          path: 'step3-page',
        );

  static const String name = 'Step3Route';
}

/// generated route for
/// [Step4Page]
class Step4Route extends PageRouteInfo<Step4RouteArgs> {
  Step4Route({
    Key? key,
    required String command,
  }) : super(
          Step4Route.name,
          path: 'step4-page',
          args: Step4RouteArgs(
            key: key,
            command: command,
          ),
        );

  static const String name = 'Step4Route';
}

class Step4RouteArgs {
  const Step4RouteArgs({
    this.key,
    required this.command,
  });

  final Key? key;

  final String command;

  @override
  String toString() {
    return 'Step4RouteArgs{key: $key, command: $command}';
  }
}

/// generated route for
/// [Step5Page]
class Step5Route extends PageRouteInfo<Step5RouteArgs> {
  Step5Route({
    Key? key,
    required String code,
  }) : super(
          Step5Route.name,
          path: 'step5-page',
          args: Step5RouteArgs(
            key: key,
            code: code,
          ),
        );

  static const String name = 'Step5Route';
}

class Step5RouteArgs {
  const Step5RouteArgs({
    this.key,
    required this.code,
  });

  final Key? key;

  final String code;

  @override
  String toString() {
    return 'Step5RouteArgs{key: $key, code: $code}';
  }
}

/// generated route for
/// [ForgotPasswordFirstPage]
class ForgotPasswordFirstRoute extends PageRouteInfo<void> {
  const ForgotPasswordFirstRoute()
      : super(
          ForgotPasswordFirstRoute.name,
          path: '',
        );

  static const String name = 'ForgotPasswordFirstRoute';
}

/// generated route for
/// [ForgotPasswordSecondPage]
class ForgotPasswordSecondRoute extends PageRouteInfo<void> {
  const ForgotPasswordSecondRoute()
      : super(
          ForgotPasswordSecondRoute.name,
          path: 'forgot-password-second-page',
        );

  static const String name = 'ForgotPasswordSecondRoute';
}

/// generated route for
/// [ScanFacePage]
class ScanFaceRoute extends PageRouteInfo<void> {
  const ScanFaceRoute()
      : super(
          ScanFaceRoute.name,
          path: '',
        );

  static const String name = 'ScanFaceRoute';
}

/// generated route for
/// [HomeRouterPage]
class HomeRouterRoute extends PageRouteInfo<void> {
  const HomeRouterRoute({List<PageRouteInfo>? children})
      : super(
          HomeRouterRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'HomeRouterRoute';
}

/// generated route for
/// [ScheduleTurnRouterPage]
class ScheduleTurnRouterRoute extends PageRouteInfo<void> {
  const ScheduleTurnRouterRoute({List<PageRouteInfo>? children})
      : super(
          ScheduleTurnRouterRoute.name,
          path: 'schedule-turn-router-page',
          initialChildren: children,
        );

  static const String name = 'ScheduleTurnRouterRoute';
}

/// generated route for
/// [SimpleCertificateRouterPage]
class SimpleCertificateRouterRoute extends PageRouteInfo<void> {
  const SimpleCertificateRouterRoute({List<PageRouteInfo>? children})
      : super(
          SimpleCertificateRouterRoute.name,
          path: 'simple-certificate-router-page',
          initialChildren: children,
        );

  static const String name = 'SimpleCertificateRouterRoute';
}

/// generated route for
/// [MarriageCelebrationRouterPage]
class MarriageCelebrationRouterRoute extends PageRouteInfo<void> {
  const MarriageCelebrationRouterRoute({List<PageRouteInfo>? children})
      : super(
          MarriageCelebrationRouterRoute.name,
          path: 'marriage-celebration-router-page',
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationRouterRoute';
}

/// generated route for
/// [ResidenceRegistrationRouterPage]
class ResidenceRegistrationRouterRoute extends PageRouteInfo<void> {
  const ResidenceRegistrationRouterRoute({List<PageRouteInfo>? children})
      : super(
          ResidenceRegistrationRouterRoute.name,
          path: 'residence-registration-router-page',
          initialChildren: children,
        );

  static const String name = 'ResidenceRegistrationRouterRoute';
}

/// generated route for
/// [ChangeOfNameRouterPage]
class ChangeOfNameRouterRoute extends PageRouteInfo<void> {
  const ChangeOfNameRouterRoute({List<PageRouteInfo>? children})
      : super(
          ChangeOfNameRouterRoute.name,
          path: 'change-of-name-router-page',
          initialChildren: children,
        );

  static const String name = 'ChangeOfNameRouterRoute';
}

/// generated route for
/// [NotificationPage]
class NotificationRoute extends PageRouteInfo<NotificationRouteArgs> {
  NotificationRoute({
    Key? key,
    String? title,
    String? subtitle,
    String? message,
    String? bottonTitle,
    required String buttonText,
    required NotificationType notificationType,
    void Function(BuildContext)? onTap,
    Widget? description,
    String? bottomText,
    void Function(BuildContext)? onPressed,
  }) : super(
          NotificationRoute.name,
          path: 'notification-page',
          args: NotificationRouteArgs(
            key: key,
            title: title,
            subtitle: subtitle,
            message: message,
            bottonTitle: bottonTitle,
            buttonText: buttonText,
            notificationType: notificationType,
            onTap: onTap,
            description: description,
            bottomText: bottomText,
            onPressed: onPressed,
          ),
        );

  static const String name = 'NotificationRoute';
}

class NotificationRouteArgs {
  const NotificationRouteArgs({
    this.key,
    this.title,
    this.subtitle,
    this.message,
    this.bottonTitle,
    required this.buttonText,
    required this.notificationType,
    this.onTap,
    this.description,
    this.bottomText,
    this.onPressed,
  });

  final Key? key;

  final String? title;

  final String? subtitle;

  final String? message;

  final String? bottonTitle;

  final String buttonText;

  final NotificationType notificationType;

  final void Function(BuildContext)? onTap;

  final Widget? description;

  final String? bottomText;

  final void Function(BuildContext)? onPressed;

  @override
  String toString() {
    return 'NotificationRouteArgs{key: $key, title: $title, subtitle: $subtitle, message: $message, bottonTitle: $bottonTitle, buttonText: $buttonText, notificationType: $notificationType, onTap: $onTap, description: $description, bottomText: $bottomText, onPressed: $onPressed}';
  }
}

/// generated route for
/// [MyTurnsPage]
class MyTurnsRoute extends PageRouteInfo<void> {
  const MyTurnsRoute()
      : super(
          MyTurnsRoute.name,
          path: 'my-turns-page',
        );

  static const String name = 'MyTurnsRoute';
}

/// generated route for
/// [MyOrdersPage]
class MyOrdersRoute extends PageRouteInfo<void> {
  const MyOrdersRoute()
      : super(
          MyOrdersRoute.name,
          path: 'my-orders-page',
        );

  static const String name = 'MyOrdersRoute';
}

/// generated route for
/// [MyOrderRejectingPage]
class MyOrderRejectingRoute extends PageRouteInfo<void> {
  const MyOrderRejectingRoute()
      : super(
          MyOrderRejectingRoute.name,
          path: 'my-order-rejecting-page',
        );

  static const String name = 'MyOrderRejectingRoute';
}

/// generated route for
/// [SelectPaymentPage]
class SelectPaymentRoute extends PageRouteInfo<SelectPaymentRouteArgs> {
  SelectPaymentRoute({
    Key? key,
    required String requestNumber,
    required double totalToPay,
  }) : super(
          SelectPaymentRoute.name,
          path: 'select-payment-page',
          args: SelectPaymentRouteArgs(
            key: key,
            requestNumber: requestNumber,
            totalToPay: totalToPay,
          ),
        );

  static const String name = 'SelectPaymentRoute';
}

class SelectPaymentRouteArgs {
  const SelectPaymentRouteArgs({
    this.key,
    required this.requestNumber,
    required this.totalToPay,
  });

  final Key? key;

  final String requestNumber;

  final double totalToPay;

  @override
  String toString() {
    return 'SelectPaymentRouteArgs{key: $key, requestNumber: $requestNumber, totalToPay: $totalToPay}';
  }
}

/// generated route for
/// [MakePaymentPage]
class MakePaymentRoute extends PageRouteInfo<MakePaymentRouteArgs> {
  MakePaymentRoute({
    Key? key,
    required String requestNumber,
    required String buttonText,
    required TypeServiceModel service,
    void Function(BuildContext)? onTapSuccessPayment,
    void Function(BuildContext)? onTapFailedPayment,
  }) : super(
          MakePaymentRoute.name,
          path: 'make-payment-page',
          args: MakePaymentRouteArgs(
            key: key,
            requestNumber: requestNumber,
            buttonText: buttonText,
            service: service,
            onTapSuccessPayment: onTapSuccessPayment,
            onTapFailedPayment: onTapFailedPayment,
          ),
        );

  static const String name = 'MakePaymentRoute';
}

class MakePaymentRouteArgs {
  const MakePaymentRouteArgs({
    this.key,
    required this.requestNumber,
    required this.buttonText,
    required this.service,
    this.onTapSuccessPayment,
    this.onTapFailedPayment,
  });

  final Key? key;

  final String requestNumber;

  final String buttonText;

  final TypeServiceModel service;

  final void Function(BuildContext)? onTapSuccessPayment;

  final void Function(BuildContext)? onTapFailedPayment;

  @override
  String toString() {
    return 'MakePaymentRouteArgs{key: $key, requestNumber: $requestNumber, buttonText: $buttonText, service: $service, onTapSuccessPayment: $onTapSuccessPayment, onTapFailedPayment: $onTapFailedPayment}';
  }
}

/// generated route for
/// [WebviewPaymentPage]
class WebviewPaymentRoute extends PageRouteInfo<WebviewPaymentRouteArgs> {
  WebviewPaymentRoute({
    Key? key,
    required String url,
    void Function()? onPageFinished,
  }) : super(
          WebviewPaymentRoute.name,
          path: 'webview-payment-page',
          args: WebviewPaymentRouteArgs(
            key: key,
            url: url,
            onPageFinished: onPageFinished,
          ),
        );

  static const String name = 'WebviewPaymentRoute';
}

class WebviewPaymentRouteArgs {
  const WebviewPaymentRouteArgs({
    this.key,
    required this.url,
    this.onPageFinished,
  });

  final Key? key;

  final String url;

  final void Function()? onPageFinished;

  @override
  String toString() {
    return 'WebviewPaymentRouteArgs{key: $key, url: $url, onPageFinished: $onPageFinished}';
  }
}

/// generated route for
/// [PaymentServiceJudgmentsNotarialActsPage]
class PaymentServiceJudgmentsNotarialActsRoute extends PageRouteInfo<void> {
  const PaymentServiceJudgmentsNotarialActsRoute()
      : super(
          PaymentServiceJudgmentsNotarialActsRoute.name,
          path: 'payment-service-judgments-notarial-acts-page',
        );

  static const String name = 'PaymentServiceJudgmentsNotarialActsRoute';
}

/// generated route for
/// [ServicesPage]
class ServicesRoute extends PageRouteInfo<void> {
  const ServicesRoute()
      : super(
          ServicesRoute.name,
          path: '',
        );

  static const String name = 'ServicesRoute';
}

/// generated route for
/// [ProceduresPage]
class ProceduresRoute extends PageRouteInfo<void> {
  const ProceduresRoute()
      : super(
          ProceduresRoute.name,
          path: 'procedures-page',
        );

  static const String name = 'ProceduresRoute';
}

/// generated route for
/// [ScheduleTurnFirstStepRouterPage]
class ScheduleTurnFirstStepRouterRoute
    extends PageRouteInfo<ScheduleTurnFirstStepRouterRouteArgs> {
  ScheduleTurnFirstStepRouterRoute({
    Key? key,
    required TypeServiceModel typeOfService,
    List<PageRouteInfo>? children,
  }) : super(
          ScheduleTurnFirstStepRouterRoute.name,
          path: '',
          args: ScheduleTurnFirstStepRouterRouteArgs(
            key: key,
            typeOfService: typeOfService,
          ),
          initialChildren: children,
        );

  static const String name = 'ScheduleTurnFirstStepRouterRoute';
}

class ScheduleTurnFirstStepRouterRouteArgs {
  const ScheduleTurnFirstStepRouterRouteArgs({
    this.key,
    required this.typeOfService,
  });

  final Key? key;

  final TypeServiceModel typeOfService;

  @override
  String toString() {
    return 'ScheduleTurnFirstStepRouterRouteArgs{key: $key, typeOfService: $typeOfService}';
  }
}

/// generated route for
/// [CodePage]
class CodeRoute extends PageRouteInfo<CodeRouteArgs> {
  CodeRoute({
    Key? key,
    required TypeServiceModel typeOfService,
    required bool includMe,
    required ProcedureType procedureType,
    required List<RelativeModel> relatives,
  }) : super(
          CodeRoute.name,
          path: 'code-page',
          args: CodeRouteArgs(
            key: key,
            typeOfService: typeOfService,
            includMe: includMe,
            procedureType: procedureType,
            relatives: relatives,
          ),
        );

  static const String name = 'CodeRoute';
}

class CodeRouteArgs {
  const CodeRouteArgs({
    this.key,
    required this.typeOfService,
    required this.includMe,
    required this.procedureType,
    required this.relatives,
  });

  final Key? key;

  final TypeServiceModel typeOfService;

  final bool includMe;

  final ProcedureType procedureType;

  final List<RelativeModel> relatives;

  @override
  String toString() {
    return 'CodeRouteArgs{key: $key, typeOfService: $typeOfService, includMe: $includMe, procedureType: $procedureType, relatives: $relatives}';
  }
}

/// generated route for
/// [ScheduleTurnSecondPage]
class ScheduleTurnSecondRoute
    extends PageRouteInfo<ScheduleTurnSecondRouteArgs> {
  ScheduleTurnSecondRoute({
    Key? key,
    required PaymentMethodType paymentMethod,
    required TypeServiceModel typeOfService,
    required bool includMe,
    required ProcedureType procedureType,
    required List<RelativeModel> relatives,
  }) : super(
          ScheduleTurnSecondRoute.name,
          path: 'schedule-turn-second-page',
          args: ScheduleTurnSecondRouteArgs(
            key: key,
            paymentMethod: paymentMethod,
            typeOfService: typeOfService,
            includMe: includMe,
            procedureType: procedureType,
            relatives: relatives,
          ),
        );

  static const String name = 'ScheduleTurnSecondRoute';
}

class ScheduleTurnSecondRouteArgs {
  const ScheduleTurnSecondRouteArgs({
    this.key,
    required this.paymentMethod,
    required this.typeOfService,
    required this.includMe,
    required this.procedureType,
    required this.relatives,
  });

  final Key? key;

  final PaymentMethodType paymentMethod;

  final TypeServiceModel typeOfService;

  final bool includMe;

  final ProcedureType procedureType;

  final List<RelativeModel> relatives;

  @override
  String toString() {
    return 'ScheduleTurnSecondRouteArgs{key: $key, paymentMethod: $paymentMethod, typeOfService: $typeOfService, includMe: $includMe, procedureType: $procedureType, relatives: $relatives}';
  }
}

/// generated route for
/// [TurnDetailsPage]
class TurnDetailsRoute extends PageRouteInfo<TurnDetailsRouteArgs> {
  TurnDetailsRoute({
    Key? key,
    required String city,
    required String agency,
    required TypeServiceModel typeOfService,
    required DateTime date,
    required TimeOfDay time,
    required PaymentMethodType paymentMethod,
    required double totalToPay,
    required ReceiptModel receipt,
  }) : super(
          TurnDetailsRoute.name,
          path: 'turn-details-page',
          args: TurnDetailsRouteArgs(
            key: key,
            city: city,
            agency: agency,
            typeOfService: typeOfService,
            date: date,
            time: time,
            paymentMethod: paymentMethod,
            totalToPay: totalToPay,
            receipt: receipt,
          ),
        );

  static const String name = 'TurnDetailsRoute';
}

class TurnDetailsRouteArgs {
  const TurnDetailsRouteArgs({
    this.key,
    required this.city,
    required this.agency,
    required this.typeOfService,
    required this.date,
    required this.time,
    required this.paymentMethod,
    required this.totalToPay,
    required this.receipt,
  });

  final Key? key;

  final String city;

  final String agency;

  final TypeServiceModel typeOfService;

  final DateTime date;

  final TimeOfDay time;

  final PaymentMethodType paymentMethod;

  final double totalToPay;

  final ReceiptModel receipt;

  @override
  String toString() {
    return 'TurnDetailsRouteArgs{key: $key, city: $city, agency: $agency, typeOfService: $typeOfService, date: $date, time: $time, paymentMethod: $paymentMethod, totalToPay: $totalToPay, receipt: $receipt}';
  }
}

/// generated route for
/// [ScheduleTurnFirstStepPersonalPage]
class ScheduleTurnFirstStepPersonalRoute
    extends PageRouteInfo<ScheduleTurnFirstStepPersonalRouteArgs> {
  ScheduleTurnFirstStepPersonalRoute({
    Key? key,
    required TypeServiceModel typeOfService,
  }) : super(
          ScheduleTurnFirstStepPersonalRoute.name,
          path: '',
          args: ScheduleTurnFirstStepPersonalRouteArgs(
            key: key,
            typeOfService: typeOfService,
          ),
        );

  static const String name = 'ScheduleTurnFirstStepPersonalRoute';
}

class ScheduleTurnFirstStepPersonalRouteArgs {
  const ScheduleTurnFirstStepPersonalRouteArgs({
    this.key,
    required this.typeOfService,
  });

  final Key? key;

  final TypeServiceModel typeOfService;

  @override
  String toString() {
    return 'ScheduleTurnFirstStepPersonalRouteArgs{key: $key, typeOfService: $typeOfService}';
  }
}

/// generated route for
/// [ScheduleTurnFirstStepFamiliarPage]
class ScheduleTurnFirstStepFamiliarRoute
    extends PageRouteInfo<ScheduleTurnFirstStepFamiliarRouteArgs> {
  ScheduleTurnFirstStepFamiliarRoute({
    Key? key,
    required TypeServiceModel typeOfService,
  }) : super(
          ScheduleTurnFirstStepFamiliarRoute.name,
          path: 'schedule-turn-first-step-familiar-page',
          args: ScheduleTurnFirstStepFamiliarRouteArgs(
            key: key,
            typeOfService: typeOfService,
          ),
        );

  static const String name = 'ScheduleTurnFirstStepFamiliarRoute';
}

class ScheduleTurnFirstStepFamiliarRouteArgs {
  const ScheduleTurnFirstStepFamiliarRouteArgs({
    this.key,
    required this.typeOfService,
  });

  final Key? key;

  final TypeServiceModel typeOfService;

  @override
  String toString() {
    return 'ScheduleTurnFirstStepFamiliarRouteArgs{key: $key, typeOfService: $typeOfService}';
  }
}

/// generated route for
/// [SimpleCertificateFirstStepRouterPage]
class SimpleCertificateFirstStepRouterRoute
    extends PageRouteInfo<SimpleCertificateFirstStepRouterRouteArgs> {
  SimpleCertificateFirstStepRouterRoute({
    required TypeServiceModel typeSimpleCertificate,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SimpleCertificateFirstStepRouterRoute.name,
          path: '',
          args: SimpleCertificateFirstStepRouterRouteArgs(
            typeSimpleCertificate: typeSimpleCertificate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SimpleCertificateFirstStepRouterRoute';
}

class SimpleCertificateFirstStepRouterRouteArgs {
  const SimpleCertificateFirstStepRouterRouteArgs({
    required this.typeSimpleCertificate,
    this.key,
  });

  final TypeServiceModel typeSimpleCertificate;

  final Key? key;

  @override
  String toString() {
    return 'SimpleCertificateFirstStepRouterRouteArgs{typeSimpleCertificate: $typeSimpleCertificate, key: $key}';
  }
}

/// generated route for
/// [SimpleCertificateSecondStepPage]
class SimpleCertificateSecondStepRoute
    extends PageRouteInfo<SimpleCertificateSecondStepRouteArgs> {
  SimpleCertificateSecondStepRoute({
    required SimpleCertificateResponse simpleCertificateResponse,
    Key? key,
  }) : super(
          SimpleCertificateSecondStepRoute.name,
          path: 'simple-certificate-second-step-page',
          args: SimpleCertificateSecondStepRouteArgs(
            simpleCertificateResponse: simpleCertificateResponse,
            key: key,
          ),
        );

  static const String name = 'SimpleCertificateSecondStepRoute';
}

class SimpleCertificateSecondStepRouteArgs {
  const SimpleCertificateSecondStepRouteArgs({
    required this.simpleCertificateResponse,
    this.key,
  });

  final SimpleCertificateResponse simpleCertificateResponse;

  final Key? key;

  @override
  String toString() {
    return 'SimpleCertificateSecondStepRouteArgs{simpleCertificateResponse: $simpleCertificateResponse, key: $key}';
  }
}

/// generated route for
/// [SimpleCertificateFirstStepFamiliarPage]
class SimpleCertificateFirstStepFamiliarRoute
    extends PageRouteInfo<SimpleCertificateFirstStepFamiliarRouteArgs> {
  SimpleCertificateFirstStepFamiliarRoute({
    required TypeServiceModel typeSimpleCertificate,
    Key? key,
  }) : super(
          SimpleCertificateFirstStepFamiliarRoute.name,
          path: '',
          args: SimpleCertificateFirstStepFamiliarRouteArgs(
            typeSimpleCertificate: typeSimpleCertificate,
            key: key,
          ),
        );

  static const String name = 'SimpleCertificateFirstStepFamiliarRoute';
}

class SimpleCertificateFirstStepFamiliarRouteArgs {
  const SimpleCertificateFirstStepFamiliarRouteArgs({
    required this.typeSimpleCertificate,
    this.key,
  });

  final TypeServiceModel typeSimpleCertificate;

  final Key? key;

  @override
  String toString() {
    return 'SimpleCertificateFirstStepFamiliarRouteArgs{typeSimpleCertificate: $typeSimpleCertificate, key: $key}';
  }
}

/// generated route for
/// [SimpleCertificateFirstStepPersonalPage]
class SimpleCertificateFirstStepPersonalRoute
    extends PageRouteInfo<SimpleCertificateFirstStepPersonalRouteArgs> {
  SimpleCertificateFirstStepPersonalRoute({
    required TypeServiceModel typeSimpleCertificate,
    Key? key,
  }) : super(
          SimpleCertificateFirstStepPersonalRoute.name,
          path: 'simple-certificate-first-step-personal-page',
          args: SimpleCertificateFirstStepPersonalRouteArgs(
            typeSimpleCertificate: typeSimpleCertificate,
            key: key,
          ),
        );

  static const String name = 'SimpleCertificateFirstStepPersonalRoute';
}

class SimpleCertificateFirstStepPersonalRouteArgs {
  const SimpleCertificateFirstStepPersonalRouteArgs({
    required this.typeSimpleCertificate,
    this.key,
  });

  final TypeServiceModel typeSimpleCertificate;

  final Key? key;

  @override
  String toString() {
    return 'SimpleCertificateFirstStepPersonalRouteArgs{typeSimpleCertificate: $typeSimpleCertificate, key: $key}';
  }
}

/// generated route for
/// [MarriageCelebrationFirstStepRouterPage]
class MarriageCelebrationFirstStepRouterRoute extends PageRouteInfo<void> {
  const MarriageCelebrationFirstStepRouterRoute({List<PageRouteInfo>? children})
      : super(
          MarriageCelebrationFirstStepRouterRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationFirstStepRouterRoute';
}

/// generated route for
/// [MarriageCelebrationAgencyPage]
class MarriageCelebrationAgencyRoute extends PageRouteInfo<void> {
  const MarriageCelebrationAgencyRoute()
      : super(
          MarriageCelebrationAgencyRoute.name,
          path: 'marriage-celebration-agency-page',
        );

  static const String name = 'MarriageCelebrationAgencyRoute';
}

/// generated route for
/// [MarriageCelebrationSecondStepRouterPage]
class MarriageCelebrationSecondStepRouterRoute extends PageRouteInfo<void> {
  const MarriageCelebrationSecondStepRouterRoute(
      {List<PageRouteInfo>? children})
      : super(
          MarriageCelebrationSecondStepRouterRoute.name,
          path: 'marriage-celebration-second-step-router-page',
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationSecondStepRouterRoute';
}

/// generated route for
/// [MarriageCelebrationThirdStepRouterPage]
class MarriageCelebrationThirdStepRouterRoute extends PageRouteInfo<void> {
  const MarriageCelebrationThirdStepRouterRoute({List<PageRouteInfo>? children})
      : super(
          MarriageCelebrationThirdStepRouterRoute.name,
          path: 'marriage-celebration-third-step-router-page',
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationThirdStepRouterRoute';
}

/// generated route for
/// [MarriageCelebrationFourthStepRouterPage]
class MarriageCelebrationFourthStepRouterRoute
    extends PageRouteInfo<MarriageCelebrationFourthStepRouterRouteArgs> {
  MarriageCelebrationFourthStepRouterRoute({
    Key? key,
    bool firstContractParty = true,
  }) : super(
          MarriageCelebrationFourthStepRouterRoute.name,
          path: 'marriage-celebration-fourth-step-router-page',
          args: MarriageCelebrationFourthStepRouterRouteArgs(
            key: key,
            firstContractParty: firstContractParty,
          ),
        );

  static const String name = 'MarriageCelebrationFourthStepRouterRoute';
}

class MarriageCelebrationFourthStepRouterRouteArgs {
  const MarriageCelebrationFourthStepRouterRouteArgs({
    this.key,
    this.firstContractParty = true,
  });

  final Key? key;

  final bool firstContractParty;

  @override
  String toString() {
    return 'MarriageCelebrationFourthStepRouterRouteArgs{key: $key, firstContractParty: $firstContractParty}';
  }
}

/// generated route for
/// [FirstStepAttorneyPage]
class FirstStepAttorneyRoute extends PageRouteInfo<void> {
  const FirstStepAttorneyRoute()
      : super(
          FirstStepAttorneyRoute.name,
          path: '',
        );

  static const String name = 'FirstStepAttorneyRoute';
}

/// generated route for
/// [FirstStepContractingPartyPage]
class FirstStepContractingPartyRoute extends PageRouteInfo<void> {
  const FirstStepContractingPartyRoute()
      : super(
          FirstStepContractingPartyRoute.name,
          path: 'first-step-contracting-party-page',
        );

  static const String name = 'FirstStepContractingPartyRoute';
}

/// generated route for
/// [SecondStepAtHeadquarterPage]
class SecondStepAtHeadquarterRoute extends PageRouteInfo<void> {
  const SecondStepAtHeadquarterRoute({List<PageRouteInfo>? children})
      : super(
          SecondStepAtHeadquarterRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'SecondStepAtHeadquarterRoute';
}

/// generated route for
/// [SecondStepOffSitePage]
class SecondStepOffSiteRoute extends PageRouteInfo<void> {
  const SecondStepOffSiteRoute()
      : super(
          SecondStepOffSiteRoute.name,
          path: 'second-step-off-site-page',
        );

  static const String name = 'SecondStepOffSiteRoute';
}

/// generated route for
/// [WitnessPage]
class WitnessRoute extends PageRouteInfo<WitnessRouteArgs> {
  WitnessRoute({
    Key? key,
    required int indexWitness,
  }) : super(
          WitnessRoute.name,
          path: '',
          args: WitnessRouteArgs(
            key: key,
            indexWitness: indexWitness,
          ),
        );

  static const String name = 'WitnessRoute';
}

class WitnessRouteArgs {
  const WitnessRouteArgs({
    this.key,
    required this.indexWitness,
  });

  final Key? key;

  final int indexWitness;

  @override
  String toString() {
    return 'WitnessRouteArgs{key: $key, indexWitness: $indexWitness}';
  }
}

/// generated route for
/// [ThirdStepContractingPartyPage]
class ThirdStepContractingPartyRoute extends PageRouteInfo<void> {
  const ThirdStepContractingPartyRoute({List<PageRouteInfo>? children})
      : super(
          ThirdStepContractingPartyRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'ThirdStepContractingPartyRoute';
}

/// generated route for
/// [ContractingPartyPage]
class ContractingPartyRoute extends PageRouteInfo<ContractingPartyRouteArgs> {
  ContractingPartyRoute({
    Key? key,
    required int indexContractingParty,
  }) : super(
          ContractingPartyRoute.name,
          path: '',
          args: ContractingPartyRouteArgs(
            key: key,
            indexContractingParty: indexContractingParty,
          ),
        );

  static const String name = 'ContractingPartyRoute';
}

class ContractingPartyRouteArgs {
  const ContractingPartyRouteArgs({
    this.key,
    required this.indexContractingParty,
  });

  final Key? key;

  final int indexContractingParty;

  @override
  String toString() {
    return 'ContractingPartyRouteArgs{key: $key, indexContractingParty: $indexContractingParty}';
  }
}

/// generated route for
/// [TermAndUsesConditionsPage]
class TermAndUsesConditionsRoute extends PageRouteInfo<void> {
  const TermAndUsesConditionsRoute()
      : super(
          TermAndUsesConditionsRoute.name,
          path: '',
        );

  static const String name = 'TermAndUsesConditionsRoute';
}

/// generated route for
/// [ChangeOfNameFirstStepPage]
class ChangeOfNameFirstStepRoute extends PageRouteInfo<void> {
  const ChangeOfNameFirstStepRoute()
      : super(
          ChangeOfNameFirstStepRoute.name,
          path: 'change-of-name-first-step-page',
        );

  static const String name = 'ChangeOfNameFirstStepRoute';
}
