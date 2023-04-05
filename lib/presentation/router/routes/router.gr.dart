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
      final args = routeData.argsAs<SuccessRouteArgs>();
      return CustomPage<dynamic>(
        routeData: routeData,
        child: SuccessPage(
          key: args.key,
          child: args.child,
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
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const Step4Page(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    Step5Route.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const Step5Page(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ForgotPasswordPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ChangePasswordPage(),
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
    ResidenceRegistrationRouterRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ResidenceRegistrationRouterPage(),
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
        ),
      );
    },
    MyTurnsRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const MyTurnsPage(),
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
          totalToPay: args.totalToPay,
          buttonText: args.buttonText,
          onTapSuccessPayment: args.onTapSuccessPayment,
          onTapFailedPayment: args.onTapFailedPayment,
        ),
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
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ScheduleTurnFirstStepRouterPage(),
      );
    },
    CodeRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const CodePage(),
      );
    },
    ScheduleTurnSecondRoute.name: (routeData) {
      final args = routeData.argsAs<ScheduleTurnSecondRouteArgs>();
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: ScheduleTurnSecondPage(
          key: args.key,
          paymentMethod: args.paymentMethod,
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
          service: args.service,
          date: args.date,
          time: args.time,
          paymentMethod: args.paymentMethod,
          requestNumber: args.requestNumber,
          totalToPay: args.totalToPay,
        ),
      );
    },
    ScheduleTurnFirstStepPersonalRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ScheduleTurnFirstStepPersonalPage(),
        transitionsBuilder: TransitionsBuilders.slideRight,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ScheduleTurnFirstStepFamiliarRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const ScheduleTurnFirstStepFamiliarPage(),
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
          typeSimpleCertificate: args.typeSimpleCertificate,
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
    RequestedInformationRoute.name: (routeData) {
      return CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const RequestedInformationPage(),
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
                  ForgotPasswordRoute.name,
                  path: '',
                  parent: ForgotPasswordRouterRoute.name,
                ),
                RouteConfig(
                  ChangePasswordRoute.name,
                  path: 'change-password-page',
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
              ResidenceRegistrationRouterRoute.name,
              path: 'residence-registration-router-page',
              parent: RootRouterRoute.name,
              guards: [authGuard],
              children: [
                RouteConfig(
                  RequestedInformationRoute.name,
                  path: '',
                  parent: ResidenceRegistrationRouterRoute.name,
                )
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
class SuccessRoute extends PageRouteInfo<SuccessRouteArgs> {
  SuccessRoute({
    Key? key,
    required Widget child,
  }) : super(
          SuccessRoute.name,
          path: 'success-page',
          args: SuccessRouteArgs(
            key: key,
            child: child,
          ),
        );

  static const String name = 'SuccessRoute';
}

class SuccessRouteArgs {
  const SuccessRouteArgs({
    this.key,
    required this.child,
  });

  final Key? key;

  final Widget child;

  @override
  String toString() {
    return 'SuccessRouteArgs{key: $key, child: $child}';
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
class Step4Route extends PageRouteInfo<void> {
  const Step4Route()
      : super(
          Step4Route.name,
          path: 'step4-page',
        );

  static const String name = 'Step4Route';
}

/// generated route for
/// [Step5Page]
class Step5Route extends PageRouteInfo<void> {
  const Step5Route()
      : super(
          Step5Route.name,
          path: 'step5-page',
        );

  static const String name = 'Step5Route';
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [ChangePasswordPage]
class ChangePasswordRoute extends PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: 'change-password-page',
        );

  static const String name = 'ChangePasswordRoute';
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

  @override
  String toString() {
    return 'NotificationRouteArgs{key: $key, title: $title, subtitle: $subtitle, message: $message, bottonTitle: $bottonTitle, buttonText: $buttonText, notificationType: $notificationType, onTap: $onTap, description: $description}';
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
    required int requestNumber,
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

  final int requestNumber;

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
    required int requestNumber,
    required double totalToPay,
    required String buttonText,
    void Function(BuildContext)? onTapSuccessPayment,
    void Function(BuildContext)? onTapFailedPayment,
  }) : super(
          MakePaymentRoute.name,
          path: 'make-payment-page',
          args: MakePaymentRouteArgs(
            key: key,
            requestNumber: requestNumber,
            totalToPay: totalToPay,
            buttonText: buttonText,
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
    required this.totalToPay,
    required this.buttonText,
    this.onTapSuccessPayment,
    this.onTapFailedPayment,
  });

  final Key? key;

  final int requestNumber;

  final double totalToPay;

  final String buttonText;

  final void Function(BuildContext)? onTapSuccessPayment;

  final void Function(BuildContext)? onTapFailedPayment;

  @override
  String toString() {
    return 'MakePaymentRouteArgs{key: $key, requestNumber: $requestNumber, totalToPay: $totalToPay, buttonText: $buttonText, onTapSuccessPayment: $onTapSuccessPayment, onTapFailedPayment: $onTapFailedPayment}';
  }
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
class ScheduleTurnFirstStepRouterRoute extends PageRouteInfo<void> {
  const ScheduleTurnFirstStepRouterRoute({List<PageRouteInfo>? children})
      : super(
          ScheduleTurnFirstStepRouterRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'ScheduleTurnFirstStepRouterRoute';
}

/// generated route for
/// [CodePage]
class CodeRoute extends PageRouteInfo<void> {
  const CodeRoute()
      : super(
          CodeRoute.name,
          path: 'code-page',
        );

  static const String name = 'CodeRoute';
}

/// generated route for
/// [ScheduleTurnSecondPage]
class ScheduleTurnSecondRoute
    extends PageRouteInfo<ScheduleTurnSecondRouteArgs> {
  ScheduleTurnSecondRoute({
    Key? key,
    required PaymentMethodType paymentMethod,
  }) : super(
          ScheduleTurnSecondRoute.name,
          path: 'schedule-turn-second-page',
          args: ScheduleTurnSecondRouteArgs(
            key: key,
            paymentMethod: paymentMethod,
          ),
        );

  static const String name = 'ScheduleTurnSecondRoute';
}

class ScheduleTurnSecondRouteArgs {
  const ScheduleTurnSecondRouteArgs({
    this.key,
    required this.paymentMethod,
  });

  final Key? key;

  final PaymentMethodType paymentMethod;

  @override
  String toString() {
    return 'ScheduleTurnSecondRouteArgs{key: $key, paymentMethod: $paymentMethod}';
  }
}

/// generated route for
/// [TurnDetailsPage]
class TurnDetailsRoute extends PageRouteInfo<TurnDetailsRouteArgs> {
  TurnDetailsRoute({
    Key? key,
    required String city,
    required String agency,
    required ServiceType service,
    required DateTime date,
    required TimeOfDay time,
    required PaymentMethodType paymentMethod,
    required int requestNumber,
    required double totalToPay,
  }) : super(
          TurnDetailsRoute.name,
          path: 'turn-details-page',
          args: TurnDetailsRouteArgs(
            key: key,
            city: city,
            agency: agency,
            service: service,
            date: date,
            time: time,
            paymentMethod: paymentMethod,
            requestNumber: requestNumber,
            totalToPay: totalToPay,
          ),
        );

  static const String name = 'TurnDetailsRoute';
}

class TurnDetailsRouteArgs {
  const TurnDetailsRouteArgs({
    this.key,
    required this.city,
    required this.agency,
    required this.service,
    required this.date,
    required this.time,
    required this.paymentMethod,
    required this.requestNumber,
    required this.totalToPay,
  });

  final Key? key;

  final String city;

  final String agency;

  final ServiceType service;

  final DateTime date;

  final TimeOfDay time;

  final PaymentMethodType paymentMethod;

  final int requestNumber;

  final double totalToPay;

  @override
  String toString() {
    return 'TurnDetailsRouteArgs{key: $key, city: $city, agency: $agency, service: $service, date: $date, time: $time, paymentMethod: $paymentMethod, requestNumber: $requestNumber, totalToPay: $totalToPay}';
  }
}

/// generated route for
/// [ScheduleTurnFirstStepPersonalPage]
class ScheduleTurnFirstStepPersonalRoute extends PageRouteInfo<void> {
  const ScheduleTurnFirstStepPersonalRoute()
      : super(
          ScheduleTurnFirstStepPersonalRoute.name,
          path: '',
        );

  static const String name = 'ScheduleTurnFirstStepPersonalRoute';
}

/// generated route for
/// [ScheduleTurnFirstStepFamiliarPage]
class ScheduleTurnFirstStepFamiliarRoute extends PageRouteInfo<void> {
  const ScheduleTurnFirstStepFamiliarRoute()
      : super(
          ScheduleTurnFirstStepFamiliarRoute.name,
          path: 'schedule-turn-first-step-familiar-page',
        );

  static const String name = 'ScheduleTurnFirstStepFamiliarRoute';
}

/// generated route for
/// [SimpleCertificateFirstStepRouterPage]
class SimpleCertificateFirstStepRouterRoute
    extends PageRouteInfo<SimpleCertificateFirstStepRouterRouteArgs> {
  SimpleCertificateFirstStepRouterRoute({
    required TypeSimpleCertificateEnum typeSimpleCertificate,
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

  final TypeSimpleCertificateEnum typeSimpleCertificate;

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
    required TypeSimpleCertificateEnum typeSimpleCertificate,
    Key? key,
  }) : super(
          SimpleCertificateSecondStepRoute.name,
          path: 'simple-certificate-second-step-page',
          args: SimpleCertificateSecondStepRouteArgs(
            typeSimpleCertificate: typeSimpleCertificate,
            key: key,
          ),
        );

  static const String name = 'SimpleCertificateSecondStepRoute';
}

class SimpleCertificateSecondStepRouteArgs {
  const SimpleCertificateSecondStepRouteArgs({
    required this.typeSimpleCertificate,
    this.key,
  });

  final TypeSimpleCertificateEnum typeSimpleCertificate;

  final Key? key;

  @override
  String toString() {
    return 'SimpleCertificateSecondStepRouteArgs{typeSimpleCertificate: $typeSimpleCertificate, key: $key}';
  }
}

/// generated route for
/// [SimpleCertificateFirstStepFamiliarPage]
class SimpleCertificateFirstStepFamiliarRoute
    extends PageRouteInfo<SimpleCertificateFirstStepFamiliarRouteArgs> {
  SimpleCertificateFirstStepFamiliarRoute({
    required TypeSimpleCertificateEnum typeSimpleCertificate,
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

  final TypeSimpleCertificateEnum typeSimpleCertificate;

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
    required TypeSimpleCertificateEnum typeSimpleCertificate,
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

  final TypeSimpleCertificateEnum typeSimpleCertificate;

  final Key? key;

  @override
  String toString() {
    return 'SimpleCertificateFirstStepPersonalRouteArgs{typeSimpleCertificate: $typeSimpleCertificate, key: $key}';
  }
}

/// generated route for
/// [RequestedInformationPage]
class RequestedInformationRoute extends PageRouteInfo<void> {
  const RequestedInformationRoute()
      : super(
          RequestedInformationRoute.name,
          path: '',
        );

  static const String name = 'RequestedInformationRoute';
}
