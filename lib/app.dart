import 'package:flutter/material.dart';
import 'package:flutter_dropdown_alert/dropdown_alert.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/observer/router_observer.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class App extends StatelessWidget {
  App({super.key});
  final appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    // final isLoggedIn = ref.watch(isLoggedInProvider);
    // ref.watch(dioProvider).interceptors.addAll(
    //   [
    //     // PrettyResponseInterceptor(),
    //     // MyNotificationInterceptor(context),
    //   ],
    // );

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
