import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/bootstrap.dart';
import 'package:registro_civil_apk/core/observers/riverpod_observer.dart';
import 'package:registro_civil_apk/data/enum/routes_enum.dart';
import 'package:registro_civil_apk/data/extension/routes_extension.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/routes/routes.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      observers: [
        Logger(),
      ],
      child: MaterialApp(
        theme: lightTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routes: routes,
        //initialRoute: RoutesEnum.loginCedula.route,
        initialRoute: RoutesEnum.loginCedula.route,
      ),
    );
  }
}
