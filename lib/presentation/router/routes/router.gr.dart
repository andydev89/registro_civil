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
    required this.agreementGuard,
  }) : super(navigatorKey);

  final AuthGuard authGuard;

  final AgreementGuard agreementGuard;

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
    FaceRecognitionRoute.name: (routeData) {
      final args = routeData.argsAs<FaceRecognitionRouteArgs>(
          orElse: () => const FaceRecognitionRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: FaceRecognitionPage(
          key: args.key,
          onFaceDetected: args.onFaceDetected,
        ),
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
      final args = routeData.argsAs<SuccessRouteArgs>(
          orElse: () => const SuccessRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: SuccessPage(
          key: args.key,
          title: args.title,
          subtitle: args.subtitle,
        ),
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
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<MarriageCelebrationRouterRouteArgs>(
          orElse: () => MarriageCelebrationRouterRouteArgs(
                  showAgreement: queryParams.getBool(
                'showAgreement',
                true,
              )));
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: MarriageCelebrationRouterPage(
          key: args.key,
          showAgreement: args.showAgreement,
        ),
      );
    },
    ResidenceRegistrationRouterRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ResidenceRegistrationRouterRouteArgs>(
          orElse: () => ResidenceRegistrationRouterRouteArgs(
                  showAgreement: queryParams.getBool(
                'showAgreement',
                true,
              )));
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ResidenceRegistrationRouterPage(
          key: args.key,
          showAgreement: args.showAgreement,
        ),
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
          transactionCode: args.transactionCode,
        ),
      );
    },
    CodeRoute.name: (routeData) {
      final args =
          routeData.argsAs<CodeRouteArgs>(orElse: () => const CodeRouteArgs());
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: CodePage(
          key: args.key,
          onCodeAccepted: args.onCodeAccepted,
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
          placeToPayReference: args.placeToPayReference,
          totalToPay: args.totalToPay,
          onTap: args.onTap,
        ),
      );
    },
    ChoosePaymentMethodRoute.name: (routeData) {
      final args = routeData.argsAs<ChoosePaymentMethodRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ChoosePaymentMethodPage(
          key: args.key,
          service: args.service,
          transactionCode: args.transactionCode,
          requestNumber: args.requestNumber,
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
          model: args.model,
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
    MarriageCelebrationPrincipalRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const MarriageCelebrationPrincipalPage(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    RejectionStepMarriageCelebrationRoute.name: (routeData) {
      final args =
          routeData.argsAs<RejectionStepMarriageCelebrationRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: RejectionStepMarriageCelebrationPage(
          key: args.key,
          marriageId: args.marriageId,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarriageCelebrationStepperRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const MarriageCelebrationStepperPage(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarriageCelebrationFirstStepRouterRoute.name: (routeData) {
      final args =
          routeData.argsAs<MarriageCelebrationFirstStepRouterRouteArgs>(
              orElse: () =>
                  const MarriageCelebrationFirstStepRouterRouteArgs());
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: MarriageCelebrationFirstStepRouterPage(
          key: args.key,
          operation: args.operation,
          marriageId: args.marriageId,
        ),
      );
    },
    MarriageCelebrationAgencyRoute.name: (routeData) {
      final args = routeData.argsAs<MarriageCelebrationAgencyRouteArgs>(
          orElse: () => const MarriageCelebrationAgencyRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: MarriageCelebrationAgencyPage(
          key: args.key,
          operation: args.operation,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MarriageCelebrationSecondStepRouterRoute.name: (routeData) {
      final args =
          routeData.argsAs<MarriageCelebrationSecondStepRouterRouteArgs>(
              orElse: () =>
                  const MarriageCelebrationSecondStepRouterRouteArgs());
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: MarriageCelebrationSecondStepRouterPage(
          key: args.key,
          operation: args.operation,
        ),
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
      final args = routeData.argsAs<FirstStepAttorneyRouteArgs>(
          orElse: () => const FirstStepAttorneyRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: FirstStepAttorneyPage(
          key: args.key,
          operation: args.operation,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FirstStepContractingPartyRoute.name: (routeData) {
      final args = routeData.argsAs<FirstStepContractingPartyRouteArgs>(
          orElse: () => const FirstStepContractingPartyRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: FirstStepContractingPartyPage(
          key: args.key,
          operation: args.operation,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SecondStepAtHeadquarterRoute.name: (routeData) {
      final args = routeData.argsAs<SecondStepAtHeadquarterRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: SecondStepAtHeadquarterPage(
          key: args.key,
          operation: args.operation,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SecondStepOffSiteRoute.name: (routeData) {
      final args = routeData.argsAs<SecondStepOffSiteRouteArgs>(
          orElse: () => const SecondStepOffSiteRouteArgs());
      return CustomPage<dynamic>(
        routeData: routeData,
        child: SecondStepOffSitePage(
          key: args.key,
          operation: args.operation,
        ),
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
          operation: args.operation,
        ),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ThirdStepContractingPartyRoute.name: (routeData) {
      final args = routeData.argsAs<ThirdStepContractingPartyRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: ThirdStepContractingPartyPage(
          key: args.key,
          operation: args.operation,
        ),
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
          operation: args.operation,
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
    ResidenceRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ResidencePage(),
      );
    },
    DependentRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const DependentPage(),
      );
    },
    FirstStepResidenceRoute.name: (routeData) {
      final args = routeData.argsAs<FirstStepResidenceRouteArgs>(
          orElse: () => const FirstStepResidenceRouteArgs());
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: FirstStepResidencePage(
          key: args.key,
          operation: args.operation,
          residenceIndex: args.residenceIndex,
        ),
      );
    },
    SecondStepResidenceRoute.name: (routeData) {
      final args = routeData.argsAs<SecondStepResidenceRouteArgs>(
          orElse: () => const SecondStepResidenceRouteArgs());
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: SecondStepResidencePage(
          key: args.key,
          operation: args.operation,
          residenceIndex: args.residenceIndex,
        ),
      );
    },
    MainRouteDependentRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteDependentRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: MainPageDependentPage(
          key: args.key,
          residentialIndex: args.residentialIndex,
        ),
      );
    },
    FirstStepDependentRoute.name: (routeData) {
      final args = routeData.argsAs<FirstStepDependentRouteArgs>(
          orElse: () => const FirstStepDependentRouteArgs());
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: FirstStepDependentPage(
          key: args.key,
          operation: args.operation,
          dependent: args.dependent,
        ),
      );
    },
    ChangeOfNameFirstStepRoute.name: (routeData) {
      final args = routeData.argsAs<ChangeOfNameFirstStepRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ChangeOfNameFirstStepPage(
          key: args.key,
          typeService: args.typeService,
        ),
      );
    },
    VerifyInformationRoute.name: (routeData) {
      final args = routeData.argsAs<VerifyInformationRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: VerifyInformationPage(
          key: args.key,
          changeOfNameModel: args.changeOfNameModel,
          typeService: args.typeService,
        ),
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
              FaceRecognitionRoute.name,
              path: 'face-recognition-page',
              parent: AuthRouterRoute.name,
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
              meta: <String, dynamic>{'agreementType': 2},
              guards: [
                authGuard,
                agreementGuard,
              ],
              children: [
                RouteConfig(
                  MarriageCelebrationPrincipalRoute.name,
                  path: '',
                  parent: MarriageCelebrationRouterRoute.name,
                ),
                RouteConfig(
                  RejectionStepMarriageCelebrationRoute.name,
                  path: 'rejection-step-marriage-celebration-page',
                  parent: MarriageCelebrationRouterRoute.name,
                ),
                RouteConfig(
                  MarriageCelebrationStepperRoute.name,
                  path: 'marriage-celebration-stepper-page',
                  parent: MarriageCelebrationRouterRoute.name,
                  children: [
                    RouteConfig(
                      MarriageCelebrationFirstStepRouterRoute.name,
                      path: '',
                      parent: MarriageCelebrationStepperRoute.name,
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
                      parent: MarriageCelebrationStepperRoute.name,
                    ),
                    RouteConfig(
                      MarriageCelebrationSecondStepRouterRoute.name,
                      path: 'marriage-celebration-second-step-router-page',
                      parent: MarriageCelebrationStepperRoute.name,
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
                      parent: MarriageCelebrationStepperRoute.name,
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
                      parent: MarriageCelebrationStepperRoute.name,
                    ),
                  ],
                ),
              ],
            ),
            RouteConfig(
              ResidenceRegistrationRouterRoute.name,
              path: 'residence-registration-router-page',
              parent: RootRouterRoute.name,
              meta: <String, dynamic>{'agreementType': 1},
              guards: [
                authGuard,
                agreementGuard,
              ],
              children: [
                RouteConfig(
                  MainRouteResicenceRegistrationRoute.name,
                  path: '',
                  parent: ResidenceRegistrationRouterRoute.name,
                ),
                RouteConfig(
                  ResidenceRoute.name,
                  path: 'residence-page',
                  parent: ResidenceRegistrationRouterRoute.name,
                  children: [
                    RouteConfig(
                      FirstStepResidenceRoute.name,
                      path: '',
                      parent: ResidenceRoute.name,
                    ),
                    RouteConfig(
                      SecondStepResidenceRoute.name,
                      path: 'second-step-residence-page',
                      parent: ResidenceRoute.name,
                    ),
                  ],
                ),
                RouteConfig(
                  DependentRoute.name,
                  path: 'dependent-page',
                  parent: ResidenceRegistrationRouterRoute.name,
                  children: [
                    RouteConfig(
                      MainRouteDependentRoute.name,
                      path: '',
                      parent: DependentRoute.name,
                    ),
                    RouteConfig(
                      FirstStepDependentRoute.name,
                      path: 'first-step-dependent-page',
                      parent: DependentRoute.name,
                    ),
                  ],
                ),
              ],
            ),
            RouteConfig(
              ChangeOfNameRouterRoute.name,
              path: 'change-of-name-router-page',
              parent: RootRouterRoute.name,
              meta: <String, dynamic>{'agreementType': 0},
              guards: [
                authGuard,
                agreementGuard,
              ],
              children: [
                RouteConfig(
                  ChangeOfNameFirstStepRoute.name,
                  path: '',
                  parent: ChangeOfNameRouterRoute.name,
                ),
                RouteConfig(
                  VerifyInformationRoute.name,
                  path: 'verify-information-page',
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
              MakePaymentRoute.name,
              path: 'make-payment-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              CodeRoute.name,
              path: 'code-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              WebviewPaymentRoute.name,
              path: 'webview-payment-page',
              parent: RootRouterRoute.name,
            ),
            RouteConfig(
              ChoosePaymentMethodRoute.name,
              path: 'choose-payment-method-page',
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
    ) onLogin,
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
/// [FaceRecognitionPage]
class FaceRecognitionRoute extends PageRouteInfo<FaceRecognitionRouteArgs> {
  FaceRecognitionRoute({
    Key? key,
    void Function(File)? onFaceDetected,
  }) : super(
          FaceRecognitionRoute.name,
          path: 'face-recognition-page',
          args: FaceRecognitionRouteArgs(
            key: key,
            onFaceDetected: onFaceDetected,
          ),
        );

  static const String name = 'FaceRecognitionRoute';
}

class FaceRecognitionRouteArgs {
  const FaceRecognitionRouteArgs({
    this.key,
    this.onFaceDetected,
  });

  final Key? key;

  final void Function(File)? onFaceDetected;

  @override
  String toString() {
    return 'FaceRecognitionRouteArgs{key: $key, onFaceDetected: $onFaceDetected}';
  }
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
class SuccessRoute extends PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute({
    Key? key,
    String? title,
    String? subtitle,
  }) : super(
          SuccessRoute.name,
          path: 'success-page',
          args: SuccessRouteArgs(
            key: key,
            title: title,
            subtitle: subtitle,
          ),
        );

  static const String name = 'SuccessRoute';
}

class SuccessRouteArgs {
  const SuccessRouteArgs({
    this.key,
    this.title,
    this.subtitle,
  });

  final Key? key;

  final String? title;

  final String? subtitle;

  @override
  String toString() {
    return 'SuccessRouteArgs{key: $key, title: $title, subtitle: $subtitle}';
  }
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
class MarriageCelebrationRouterRoute
    extends PageRouteInfo<MarriageCelebrationRouterRouteArgs> {
  MarriageCelebrationRouterRoute({
    Key? key,
    bool showAgreement = true,
    List<PageRouteInfo>? children,
  }) : super(
          MarriageCelebrationRouterRoute.name,
          path: 'marriage-celebration-router-page',
          args: MarriageCelebrationRouterRouteArgs(
            key: key,
            showAgreement: showAgreement,
          ),
          rawQueryParams: {'showAgreement': showAgreement},
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationRouterRoute';
}

class MarriageCelebrationRouterRouteArgs {
  const MarriageCelebrationRouterRouteArgs({
    this.key,
    this.showAgreement = true,
  });

  final Key? key;

  final bool showAgreement;

  @override
  String toString() {
    return 'MarriageCelebrationRouterRouteArgs{key: $key, showAgreement: $showAgreement}';
  }
}

/// generated route for
/// [ResidenceRegistrationRouterPage]
class ResidenceRegistrationRouterRoute
    extends PageRouteInfo<ResidenceRegistrationRouterRouteArgs> {
  ResidenceRegistrationRouterRoute({
    Key? key,
    bool showAgreement = true,
    List<PageRouteInfo>? children,
  }) : super(
          ResidenceRegistrationRouterRoute.name,
          path: 'residence-registration-router-page',
          args: ResidenceRegistrationRouterRouteArgs(
            key: key,
            showAgreement: showAgreement,
          ),
          rawQueryParams: {'showAgreement': showAgreement},
          initialChildren: children,
        );

  static const String name = 'ResidenceRegistrationRouterRoute';
}

class ResidenceRegistrationRouterRouteArgs {
  const ResidenceRegistrationRouterRouteArgs({
    this.key,
    this.showAgreement = true,
  });

  final Key? key;

  final bool showAgreement;

  @override
  String toString() {
    return 'ResidenceRegistrationRouterRouteArgs{key: $key, showAgreement: $showAgreement}';
  }
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
/// [MakePaymentPage]
class MakePaymentRoute extends PageRouteInfo<MakePaymentRouteArgs> {
  MakePaymentRoute({
    Key? key,
    String? requestNumber,
    required String buttonText,
    required TypeServiceModel service,
    void Function(BuildContext)? onTapSuccessPayment,
    void Function(BuildContext)? onTapFailedPayment,
    required String transactionCode,
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
            transactionCode: transactionCode,
          ),
        );

  static const String name = 'MakePaymentRoute';
}

class MakePaymentRouteArgs {
  const MakePaymentRouteArgs({
    this.key,
    this.requestNumber,
    required this.buttonText,
    required this.service,
    this.onTapSuccessPayment,
    this.onTapFailedPayment,
    required this.transactionCode,
  });

  final Key? key;

  final String? requestNumber;

  final String buttonText;

  final TypeServiceModel service;

  final void Function(BuildContext)? onTapSuccessPayment;

  final void Function(BuildContext)? onTapFailedPayment;

  final String transactionCode;

  @override
  String toString() {
    return 'MakePaymentRouteArgs{key: $key, requestNumber: $requestNumber, buttonText: $buttonText, service: $service, onTapSuccessPayment: $onTapSuccessPayment, onTapFailedPayment: $onTapFailedPayment, transactionCode: $transactionCode}';
  }
}

/// generated route for
/// [CodePage]
class CodeRoute extends PageRouteInfo<CodeRouteArgs> {
  CodeRoute({
    Key? key,
    void Function(BuildContext)? onCodeAccepted,
  }) : super(
          CodeRoute.name,
          path: 'code-page',
          args: CodeRouteArgs(
            key: key,
            onCodeAccepted: onCodeAccepted,
          ),
        );

  static const String name = 'CodeRoute';
}

class CodeRouteArgs {
  const CodeRouteArgs({
    this.key,
    this.onCodeAccepted,
  });

  final Key? key;

  final void Function(BuildContext)? onCodeAccepted;

  @override
  String toString() {
    return 'CodeRouteArgs{key: $key, onCodeAccepted: $onCodeAccepted}';
  }
}

/// generated route for
/// [WebviewPaymentPage]
class WebviewPaymentRoute extends PageRouteInfo<WebviewPaymentRouteArgs> {
  WebviewPaymentRoute({
    Key? key,
    required String url,
    required PlaceToPayReferenceModel placeToPayReference,
    required double totalToPay,
    void Function(BuildContext)? onTap,
  }) : super(
          WebviewPaymentRoute.name,
          path: 'webview-payment-page',
          args: WebviewPaymentRouteArgs(
            key: key,
            url: url,
            placeToPayReference: placeToPayReference,
            totalToPay: totalToPay,
            onTap: onTap,
          ),
        );

  static const String name = 'WebviewPaymentRoute';
}

class WebviewPaymentRouteArgs {
  const WebviewPaymentRouteArgs({
    this.key,
    required this.url,
    required this.placeToPayReference,
    required this.totalToPay,
    this.onTap,
  });

  final Key? key;

  final String url;

  final PlaceToPayReferenceModel placeToPayReference;

  final double totalToPay;

  final void Function(BuildContext)? onTap;

  @override
  String toString() {
    return 'WebviewPaymentRouteArgs{key: $key, url: $url, placeToPayReference: $placeToPayReference, totalToPay: $totalToPay, onTap: $onTap}';
  }
}

/// generated route for
/// [ChoosePaymentMethodPage]
class ChoosePaymentMethodRoute
    extends PageRouteInfo<ChoosePaymentMethodRouteArgs> {
  ChoosePaymentMethodRoute({
    Key? key,
    required TypeServiceModel service,
    required String transactionCode,
    String? requestNumber,
  }) : super(
          ChoosePaymentMethodRoute.name,
          path: 'choose-payment-method-page',
          args: ChoosePaymentMethodRouteArgs(
            key: key,
            service: service,
            transactionCode: transactionCode,
            requestNumber: requestNumber,
          ),
        );

  static const String name = 'ChoosePaymentMethodRoute';
}

class ChoosePaymentMethodRouteArgs {
  const ChoosePaymentMethodRouteArgs({
    this.key,
    required this.service,
    required this.transactionCode,
    this.requestNumber,
  });

  final Key? key;

  final TypeServiceModel service;

  final String transactionCode;

  final String? requestNumber;

  @override
  String toString() {
    return 'ChoosePaymentMethodRouteArgs{key: $key, service: $service, transactionCode: $transactionCode, requestNumber: $requestNumber}';
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
    required SimpleCertificateResponseModel simpleCertificateResponse,
    required TypeServiceModel model,
    Key? key,
  }) : super(
          SimpleCertificateSecondStepRoute.name,
          path: 'simple-certificate-second-step-page',
          args: SimpleCertificateSecondStepRouteArgs(
            simpleCertificateResponse: simpleCertificateResponse,
            model: model,
            key: key,
          ),
        );

  static const String name = 'SimpleCertificateSecondStepRoute';
}

class SimpleCertificateSecondStepRouteArgs {
  const SimpleCertificateSecondStepRouteArgs({
    required this.simpleCertificateResponse,
    required this.model,
    this.key,
  });

  final SimpleCertificateResponseModel simpleCertificateResponse;

  final TypeServiceModel model;

  final Key? key;

  @override
  String toString() {
    return 'SimpleCertificateSecondStepRouteArgs{simpleCertificateResponse: $simpleCertificateResponse, model: $model, key: $key}';
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
/// [MarriageCelebrationPrincipalPage]
class MarriageCelebrationPrincipalRoute extends PageRouteInfo<void> {
  const MarriageCelebrationPrincipalRoute()
      : super(
          MarriageCelebrationPrincipalRoute.name,
          path: '',
        );

  static const String name = 'MarriageCelebrationPrincipalRoute';
}

/// generated route for
/// [RejectionStepMarriageCelebrationPage]
class RejectionStepMarriageCelebrationRoute
    extends PageRouteInfo<RejectionStepMarriageCelebrationRouteArgs> {
  RejectionStepMarriageCelebrationRoute({
    Key? key,
    required String marriageId,
  }) : super(
          RejectionStepMarriageCelebrationRoute.name,
          path: 'rejection-step-marriage-celebration-page',
          args: RejectionStepMarriageCelebrationRouteArgs(
            key: key,
            marriageId: marriageId,
          ),
        );

  static const String name = 'RejectionStepMarriageCelebrationRoute';
}

class RejectionStepMarriageCelebrationRouteArgs {
  const RejectionStepMarriageCelebrationRouteArgs({
    this.key,
    required this.marriageId,
  });

  final Key? key;

  final String marriageId;

  @override
  String toString() {
    return 'RejectionStepMarriageCelebrationRouteArgs{key: $key, marriageId: $marriageId}';
  }
}

/// generated route for
/// [MarriageCelebrationStepperPage]
class MarriageCelebrationStepperRoute extends PageRouteInfo<void> {
  const MarriageCelebrationStepperRoute({List<PageRouteInfo>? children})
      : super(
          MarriageCelebrationStepperRoute.name,
          path: 'marriage-celebration-stepper-page',
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationStepperRoute';
}

/// generated route for
/// [MarriageCelebrationFirstStepRouterPage]
class MarriageCelebrationFirstStepRouterRoute
    extends PageRouteInfo<MarriageCelebrationFirstStepRouterRouteArgs> {
  MarriageCelebrationFirstStepRouterRoute({
    Key? key,
    Crud operation = Crud.create,
    String? marriageId,
    List<PageRouteInfo>? children,
  }) : super(
          MarriageCelebrationFirstStepRouterRoute.name,
          path: '',
          args: MarriageCelebrationFirstStepRouterRouteArgs(
            key: key,
            operation: operation,
            marriageId: marriageId,
          ),
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationFirstStepRouterRoute';
}

class MarriageCelebrationFirstStepRouterRouteArgs {
  const MarriageCelebrationFirstStepRouterRouteArgs({
    this.key,
    this.operation = Crud.create,
    this.marriageId,
  });

  final Key? key;

  final Crud operation;

  final String? marriageId;

  @override
  String toString() {
    return 'MarriageCelebrationFirstStepRouterRouteArgs{key: $key, operation: $operation, marriageId: $marriageId}';
  }
}

/// generated route for
/// [MarriageCelebrationAgencyPage]
class MarriageCelebrationAgencyRoute
    extends PageRouteInfo<MarriageCelebrationAgencyRouteArgs> {
  MarriageCelebrationAgencyRoute({
    Key? key,
    Crud operation = Crud.create,
  }) : super(
          MarriageCelebrationAgencyRoute.name,
          path: 'marriage-celebration-agency-page',
          args: MarriageCelebrationAgencyRouteArgs(
            key: key,
            operation: operation,
          ),
        );

  static const String name = 'MarriageCelebrationAgencyRoute';
}

class MarriageCelebrationAgencyRouteArgs {
  const MarriageCelebrationAgencyRouteArgs({
    this.key,
    this.operation = Crud.create,
  });

  final Key? key;

  final Crud operation;

  @override
  String toString() {
    return 'MarriageCelebrationAgencyRouteArgs{key: $key, operation: $operation}';
  }
}

/// generated route for
/// [MarriageCelebrationSecondStepRouterPage]
class MarriageCelebrationSecondStepRouterRoute
    extends PageRouteInfo<MarriageCelebrationSecondStepRouterRouteArgs> {
  MarriageCelebrationSecondStepRouterRoute({
    Key? key,
    Crud operation = Crud.create,
    List<PageRouteInfo>? children,
  }) : super(
          MarriageCelebrationSecondStepRouterRoute.name,
          path: 'marriage-celebration-second-step-router-page',
          args: MarriageCelebrationSecondStepRouterRouteArgs(
            key: key,
            operation: operation,
          ),
          initialChildren: children,
        );

  static const String name = 'MarriageCelebrationSecondStepRouterRoute';
}

class MarriageCelebrationSecondStepRouterRouteArgs {
  const MarriageCelebrationSecondStepRouterRouteArgs({
    this.key,
    this.operation = Crud.create,
  });

  final Key? key;

  final Crud operation;

  @override
  String toString() {
    return 'MarriageCelebrationSecondStepRouterRouteArgs{key: $key, operation: $operation}';
  }
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
class FirstStepAttorneyRoute extends PageRouteInfo<FirstStepAttorneyRouteArgs> {
  FirstStepAttorneyRoute({
    Key? key,
    Crud operation = Crud.create,
  }) : super(
          FirstStepAttorneyRoute.name,
          path: '',
          args: FirstStepAttorneyRouteArgs(
            key: key,
            operation: operation,
          ),
        );

  static const String name = 'FirstStepAttorneyRoute';
}

class FirstStepAttorneyRouteArgs {
  const FirstStepAttorneyRouteArgs({
    this.key,
    this.operation = Crud.create,
  });

  final Key? key;

  final Crud operation;

  @override
  String toString() {
    return 'FirstStepAttorneyRouteArgs{key: $key, operation: $operation}';
  }
}

/// generated route for
/// [FirstStepContractingPartyPage]
class FirstStepContractingPartyRoute
    extends PageRouteInfo<FirstStepContractingPartyRouteArgs> {
  FirstStepContractingPartyRoute({
    Key? key,
    Crud operation = Crud.create,
  }) : super(
          FirstStepContractingPartyRoute.name,
          path: 'first-step-contracting-party-page',
          args: FirstStepContractingPartyRouteArgs(
            key: key,
            operation: operation,
          ),
        );

  static const String name = 'FirstStepContractingPartyRoute';
}

class FirstStepContractingPartyRouteArgs {
  const FirstStepContractingPartyRouteArgs({
    this.key,
    this.operation = Crud.create,
  });

  final Key? key;

  final Crud operation;

  @override
  String toString() {
    return 'FirstStepContractingPartyRouteArgs{key: $key, operation: $operation}';
  }
}

/// generated route for
/// [SecondStepAtHeadquarterPage]
class SecondStepAtHeadquarterRoute
    extends PageRouteInfo<SecondStepAtHeadquarterRouteArgs> {
  SecondStepAtHeadquarterRoute({
    Key? key,
    required Crud operation,
    List<PageRouteInfo>? children,
  }) : super(
          SecondStepAtHeadquarterRoute.name,
          path: '',
          args: SecondStepAtHeadquarterRouteArgs(
            key: key,
            operation: operation,
          ),
          initialChildren: children,
        );

  static const String name = 'SecondStepAtHeadquarterRoute';
}

class SecondStepAtHeadquarterRouteArgs {
  const SecondStepAtHeadquarterRouteArgs({
    this.key,
    required this.operation,
  });

  final Key? key;

  final Crud operation;

  @override
  String toString() {
    return 'SecondStepAtHeadquarterRouteArgs{key: $key, operation: $operation}';
  }
}

/// generated route for
/// [SecondStepOffSitePage]
class SecondStepOffSiteRoute extends PageRouteInfo<SecondStepOffSiteRouteArgs> {
  SecondStepOffSiteRoute({
    Key? key,
    Crud operation = Crud.create,
  }) : super(
          SecondStepOffSiteRoute.name,
          path: 'second-step-off-site-page',
          args: SecondStepOffSiteRouteArgs(
            key: key,
            operation: operation,
          ),
        );

  static const String name = 'SecondStepOffSiteRoute';
}

class SecondStepOffSiteRouteArgs {
  const SecondStepOffSiteRouteArgs({
    this.key,
    this.operation = Crud.create,
  });

  final Key? key;

  final Crud operation;

  @override
  String toString() {
    return 'SecondStepOffSiteRouteArgs{key: $key, operation: $operation}';
  }
}

/// generated route for
/// [WitnessPage]
class WitnessRoute extends PageRouteInfo<WitnessRouteArgs> {
  WitnessRoute({
    Key? key,
    required int indexWitness,
    Crud operation = Crud.create,
  }) : super(
          WitnessRoute.name,
          path: '',
          args: WitnessRouteArgs(
            key: key,
            indexWitness: indexWitness,
            operation: operation,
          ),
        );

  static const String name = 'WitnessRoute';
}

class WitnessRouteArgs {
  const WitnessRouteArgs({
    this.key,
    required this.indexWitness,
    this.operation = Crud.create,
  });

  final Key? key;

  final int indexWitness;

  final Crud operation;

  @override
  String toString() {
    return 'WitnessRouteArgs{key: $key, indexWitness: $indexWitness, operation: $operation}';
  }
}

/// generated route for
/// [ThirdStepContractingPartyPage]
class ThirdStepContractingPartyRoute
    extends PageRouteInfo<ThirdStepContractingPartyRouteArgs> {
  ThirdStepContractingPartyRoute({
    Key? key,
    required Crud operation,
    List<PageRouteInfo>? children,
  }) : super(
          ThirdStepContractingPartyRoute.name,
          path: '',
          args: ThirdStepContractingPartyRouteArgs(
            key: key,
            operation: operation,
          ),
          initialChildren: children,
        );

  static const String name = 'ThirdStepContractingPartyRoute';
}

class ThirdStepContractingPartyRouteArgs {
  const ThirdStepContractingPartyRouteArgs({
    this.key,
    required this.operation,
  });

  final Key? key;

  final Crud operation;

  @override
  String toString() {
    return 'ThirdStepContractingPartyRouteArgs{key: $key, operation: $operation}';
  }
}

/// generated route for
/// [ContractingPartyPage]
class ContractingPartyRoute extends PageRouteInfo<ContractingPartyRouteArgs> {
  ContractingPartyRoute({
    Key? key,
    required int indexContractingParty,
    Crud operation = Crud.create,
  }) : super(
          ContractingPartyRoute.name,
          path: '',
          args: ContractingPartyRouteArgs(
            key: key,
            indexContractingParty: indexContractingParty,
            operation: operation,
          ),
        );

  static const String name = 'ContractingPartyRoute';
}

class ContractingPartyRouteArgs {
  const ContractingPartyRouteArgs({
    this.key,
    required this.indexContractingParty,
    this.operation = Crud.create,
  });

  final Key? key;

  final int indexContractingParty;

  final Crud operation;

  @override
  String toString() {
    return 'ContractingPartyRouteArgs{key: $key, indexContractingParty: $indexContractingParty, operation: $operation}';
  }
}

/// generated route for
/// [MainPageResicenceRegistrationPage]
class MainRouteResicenceRegistrationRoute extends PageRouteInfo<void> {
  const MainRouteResicenceRegistrationRoute()
      : super(
          MainRouteResicenceRegistrationRoute.name,
          path: '',
        );

  static const String name = 'MainRouteResicenceRegistrationRoute';
}

/// generated route for
/// [ResidencePage]
class ResidenceRoute extends PageRouteInfo<void> {
  const ResidenceRoute({List<PageRouteInfo>? children})
      : super(
          ResidenceRoute.name,
          path: 'residence-page',
          initialChildren: children,
        );

  static const String name = 'ResidenceRoute';
}

/// generated route for
/// [DependentPage]
class DependentRoute extends PageRouteInfo<void> {
  const DependentRoute({List<PageRouteInfo>? children})
      : super(
          DependentRoute.name,
          path: 'dependent-page',
          initialChildren: children,
        );

  static const String name = 'DependentRoute';
}

/// generated route for
/// [FirstStepResidencePage]
class FirstStepResidenceRoute
    extends PageRouteInfo<FirstStepResidenceRouteArgs> {
  FirstStepResidenceRoute({
    Key? key,
    Crud operation = Crud.create,
    int? residenceIndex,
  }) : super(
          FirstStepResidenceRoute.name,
          path: '',
          args: FirstStepResidenceRouteArgs(
            key: key,
            operation: operation,
            residenceIndex: residenceIndex,
          ),
        );

  static const String name = 'FirstStepResidenceRoute';
}

class FirstStepResidenceRouteArgs {
  const FirstStepResidenceRouteArgs({
    this.key,
    this.operation = Crud.create,
    this.residenceIndex,
  });

  final Key? key;

  final Crud operation;

  final int? residenceIndex;

  @override
  String toString() {
    return 'FirstStepResidenceRouteArgs{key: $key, operation: $operation, residenceIndex: $residenceIndex}';
  }
}

/// generated route for
/// [SecondStepResidencePage]
class SecondStepResidenceRoute
    extends PageRouteInfo<SecondStepResidenceRouteArgs> {
  SecondStepResidenceRoute({
    Key? key,
    Crud operation = Crud.create,
    int? residenceIndex,
  }) : super(
          SecondStepResidenceRoute.name,
          path: 'second-step-residence-page',
          args: SecondStepResidenceRouteArgs(
            key: key,
            operation: operation,
            residenceIndex: residenceIndex,
          ),
        );

  static const String name = 'SecondStepResidenceRoute';
}

class SecondStepResidenceRouteArgs {
  const SecondStepResidenceRouteArgs({
    this.key,
    this.operation = Crud.create,
    this.residenceIndex,
  });

  final Key? key;

  final Crud operation;

  final int? residenceIndex;

  @override
  String toString() {
    return 'SecondStepResidenceRouteArgs{key: $key, operation: $operation, residenceIndex: $residenceIndex}';
  }
}

/// generated route for
/// [MainPageDependentPage]
class MainRouteDependentRoute
    extends PageRouteInfo<MainRouteDependentRouteArgs> {
  MainRouteDependentRoute({
    Key? key,
    required int residentialIndex,
  }) : super(
          MainRouteDependentRoute.name,
          path: '',
          args: MainRouteDependentRouteArgs(
            key: key,
            residentialIndex: residentialIndex,
          ),
        );

  static const String name = 'MainRouteDependentRoute';
}

class MainRouteDependentRouteArgs {
  const MainRouteDependentRouteArgs({
    this.key,
    required this.residentialIndex,
  });

  final Key? key;

  final int residentialIndex;

  @override
  String toString() {
    return 'MainRouteDependentRouteArgs{key: $key, residentialIndex: $residentialIndex}';
  }
}

/// generated route for
/// [FirstStepDependentPage]
class FirstStepDependentRoute
    extends PageRouteInfo<FirstStepDependentRouteArgs> {
  FirstStepDependentRoute({
    Key? key,
    Crud operation = Crud.create,
    Dependent? dependent,
  }) : super(
          FirstStepDependentRoute.name,
          path: 'first-step-dependent-page',
          args: FirstStepDependentRouteArgs(
            key: key,
            operation: operation,
            dependent: dependent,
          ),
        );

  static const String name = 'FirstStepDependentRoute';
}

class FirstStepDependentRouteArgs {
  const FirstStepDependentRouteArgs({
    this.key,
    this.operation = Crud.create,
    this.dependent,
  });

  final Key? key;

  final Crud operation;

  final Dependent? dependent;

  @override
  String toString() {
    return 'FirstStepDependentRouteArgs{key: $key, operation: $operation, dependent: $dependent}';
  }
}

/// generated route for
/// [ChangeOfNameFirstStepPage]
class ChangeOfNameFirstStepRoute
    extends PageRouteInfo<ChangeOfNameFirstStepRouteArgs> {
  ChangeOfNameFirstStepRoute({
    Key? key,
    required TypeServiceModel typeService,
  }) : super(
          ChangeOfNameFirstStepRoute.name,
          path: '',
          args: ChangeOfNameFirstStepRouteArgs(
            key: key,
            typeService: typeService,
          ),
        );

  static const String name = 'ChangeOfNameFirstStepRoute';
}

class ChangeOfNameFirstStepRouteArgs {
  const ChangeOfNameFirstStepRouteArgs({
    this.key,
    required this.typeService,
  });

  final Key? key;

  final TypeServiceModel typeService;

  @override
  String toString() {
    return 'ChangeOfNameFirstStepRouteArgs{key: $key, typeService: $typeService}';
  }
}

/// generated route for
/// [VerifyInformationPage]
class VerifyInformationRoute extends PageRouteInfo<VerifyInformationRouteArgs> {
  VerifyInformationRoute({
    Key? key,
    required ChangeOfNameModel changeOfNameModel,
    required TypeServiceModel typeService,
  }) : super(
          VerifyInformationRoute.name,
          path: 'verify-information-page',
          args: VerifyInformationRouteArgs(
            key: key,
            changeOfNameModel: changeOfNameModel,
            typeService: typeService,
          ),
        );

  static const String name = 'VerifyInformationRoute';
}

class VerifyInformationRouteArgs {
  const VerifyInformationRouteArgs({
    this.key,
    required this.changeOfNameModel,
    required this.typeService,
  });

  final Key? key;

  final ChangeOfNameModel changeOfNameModel;

  final TypeServiceModel typeService;

  @override
  String toString() {
    return 'VerifyInformationRouteArgs{key: $key, changeOfNameModel: $changeOfNameModel, typeService: $typeService}';
  }
}
