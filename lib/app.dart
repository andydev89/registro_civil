import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/dropdown_alert.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/data/providers/isar/isar_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/observer/router_observer.dart';
import 'package:registro_civil_apk/presentation/router/routes/auth_guard.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  late AppRouter appRouter;

  @override
  void initState() {
    super.initState();
    appRouter = AppRouter(authGuard: AuthGuard(ref));
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(isarProvider);
    return MaterialApp.router(
      theme: lightTheme,
      // theme: lightTheme.copyWith(
      //   pageTransitionsTheme: const PageTransitionsTheme(
      //     builders: {
      //       // replace default CupertinoPageTransitionsBuilder with this
      //       TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
      // ),
      //       TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      //     },
      //   ),
      builder: (context, child) => Stack(
        children: [
          child!,
          const DropdownAlert(),
        ],
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [RouterObserver()],
      ),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
