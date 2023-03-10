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
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    RootRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const RootRouterPage(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    AuthRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const AuthRouterPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
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
    FingerPrintRouterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FingerPrintRouterPage(),
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
    ScanDniRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const ScanDniPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FingerPrintRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FingerPrintPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FingerPrint2Route.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const FingerPrint2Page(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          RootRouterRoute.name,
          path: '/',
          children: [
            RouteConfig(
              AuthRouterRoute.name,
              path: '',
              parent: RootRouterRoute.name,
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
                    ),
                    RouteConfig(
                      ScanDniRoute.name,
                      path: 'scan-dni-page',
                      parent: ScanRouterRoute.name,
                    ),
                  ],
                ),
                RouteConfig(
                  FingerPrintRouterRoute.name,
                  path: 'finger-print-router-page',
                  parent: AuthRouterRoute.name,
                  children: [
                    RouteConfig(
                      FingerPrintRoute.name,
                      path: '',
                      parent: FingerPrintRouterRoute.name,
                    ),
                    RouteConfig(
                      FingerPrint2Route.name,
                      path: 'finger-print2-page',
                      parent: FingerPrintRouterRoute.name,
                    ),
                  ],
                ),
                RouteConfig(
                  SuccessRoute.name,
                  path: 'success-page',
                  parent: AuthRouterRoute.name,
                ),
              ],
            )
          ],
        )
      ];
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
/// [AuthRouterPage]
class AuthRouterRoute extends PageRouteInfo<void> {
  const AuthRouterRoute({List<PageRouteInfo>? children})
      : super(
          AuthRouterRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'AuthRouterRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '',
        );

  static const String name = 'LoginRoute';
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
/// [FingerPrintRouterPage]
class FingerPrintRouterRoute extends PageRouteInfo<void> {
  const FingerPrintRouterRoute({List<PageRouteInfo>? children})
      : super(
          FingerPrintRouterRoute.name,
          path: 'finger-print-router-page',
          initialChildren: children,
        );

  static const String name = 'FingerPrintRouterRoute';
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
/// [ScanDniPage]
class ScanDniRoute extends PageRouteInfo<void> {
  const ScanDniRoute()
      : super(
          ScanDniRoute.name,
          path: 'scan-dni-page',
        );

  static const String name = 'ScanDniRoute';
}

/// generated route for
/// [FingerPrintPage]
class FingerPrintRoute extends PageRouteInfo<void> {
  const FingerPrintRoute()
      : super(
          FingerPrintRoute.name,
          path: '',
        );

  static const String name = 'FingerPrintRoute';
}

/// generated route for
/// [FingerPrint2Page]
class FingerPrint2Route extends PageRouteInfo<void> {
  const FingerPrint2Route()
      : super(
          FingerPrint2Route.name,
          path: 'finger-print2-page',
        );

  static const String name = 'FingerPrint2Route';
}
