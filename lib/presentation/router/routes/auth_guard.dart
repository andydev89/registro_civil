import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.isUserLoggedIn});
  final bool isUserLoggedIn;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (isUserLoggedIn) {
      return resolver.next();
    } else {
      await router.replaceNamed('/auth');
    }
  }
}
