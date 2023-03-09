import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/core/observers/riverpod_observer.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/observer/router_observer.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [
        Logger(),
      ],
      child: MaterialApp.router(
        theme: lightTheme,
        // theme: lightTheme.copyWith(
        //   pageTransitionsTheme: const PageTransitionsTheme(
        //     builders: {
        //       // replace default CupertinoPageTransitionsBuilder with this
        //       TargetPlatform.iOS: NoShadowCupertinoPageTransitionsBuilder(),
        //       TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        //     },
        //   ),
        // ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerDelegate: appRouter.delegate(
          navigatorObservers: () => [RouterObserver()],
        ),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
