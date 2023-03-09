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
    RegisterRoute.name: (routeData) {
      return CustomPage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
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
                  RegisterRoute.name,
                  path: 'register-page',
                  parent: AuthRouterRoute.name,
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
                ),
                RouteConfig(
                  FingerPrintRouterRoute.name,
                  path: 'finger-print-router-page',
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
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute()
      : super(
          RegisterRoute.name,
          path: 'register-page',
        );

  static const String name = 'RegisterRoute';
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
  const ScanRouterRoute()
      : super(
          ScanRouterRoute.name,
          path: 'scan-router-page',
        );

  static const String name = 'ScanRouterRoute';
}

/// generated route for
/// [FingerPrintRouterPage]
class FingerPrintRouterRoute extends PageRouteInfo<void> {
  const FingerPrintRouterRoute()
      : super(
          FingerPrintRouterRoute.name,
          path: 'finger-print-router-page',
        );

  static const String name = 'FingerPrintRouterRoute';
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
