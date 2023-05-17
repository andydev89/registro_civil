import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/presentation/providers/auth_provider.dart';

class RouterObserver extends AutoRouterObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('New route pushed: ${route.settings.name}', name: 'ROUTER');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    log('Tab route visited: ${route.name}', name: 'ROUTER');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('Tab route re-visited: ${route.name}', name: 'ROUTER');
  }
}

class RegisterAccountObserver extends AutoRouterObserver {
  RegisterAccountObserver(this.ref);
  final WidgetRef ref;
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings is AutoRoutePage &&
        (route.settings as AutoRoutePage).routeData.meta['index'] != null) {
      ref.read(stepperIndexProvider.notifier).state =
          (route.settings as AutoRoutePage).routeData.meta['index'] as int;
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    if (route.settings is AutoRoutePage &&
        (route.settings as AutoRoutePage).routeData.meta['index'] != null) {
      ref.read(stepperIndexProvider.notifier).state =
          (route.settings as AutoRoutePage).routeData.meta['index'] as int;
    }
  }
}
