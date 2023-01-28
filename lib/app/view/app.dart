import 'package:flutter/material.dart';
import 'package:registro_civil_apk/data/routes/routes.dart';
import 'package:registro_civil_apk/data/theme/theme.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routes: routes,
      initialRoute: 'login',
    );
  }
}
