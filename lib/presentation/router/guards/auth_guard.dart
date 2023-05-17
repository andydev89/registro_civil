import 'package:auto_route/auto_route.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/providers/providers.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard(this.ref);

  final WidgetRef ref;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final data = await ref.watch(loginProvider.notifier).future;
    if (data) {
      resolver.next();
    } else {
      await router.push(
        AuthRouterRoute(
          children: [
            LoginRoute(
              onLogin: (context, result) {
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
