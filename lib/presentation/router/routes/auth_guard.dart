import 'package:auto_route/auto_route.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard();


  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (isLoggedIn.value) {
      return resolver.next();
    } else {
      await router.push(const AuthRouterRoute());
    }
  }
}
