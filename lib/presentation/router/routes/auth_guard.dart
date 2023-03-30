import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/providers/auth_providers.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.ref);
  WidgetRef ref;

  @override
  void onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) {
    final login = ref.watch(loginProvider.notifier);
    if (login.isLoggedIn) {
      resolver.next();
    } else {
      router.push(
        AuthRouterRoute(
          children: [
            LoginRoute(
              onLogin: (result) {
                router.pop();
                resolver.next(result);
              },
            ),
          ],
        ),
      );
    }
  }
}
