import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:registro_civil_apk/presentation/pages/home/widgets/finger_print_background.dart';
import 'package:registro_civil_apk/presentation/pages/home/widgets/home_app_bar.dart';
import 'package:registro_civil_apk/presentation/pages/home/widgets/home_drawer.dart';
import 'package:registro_civil_apk/presentation/pages/home/widgets/home_search.dart';
import 'package:registro_civil_apk/presentation/pages/home/widgets/logo_bottom_sheet.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

class HomeRouterPage extends HookConsumerWidget {
  const HomeRouterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const HomeDrawer(),
      body: Stack(
        children: [
          const FingerPrintBackground(),
          Column(
            children: [
              TabBar(
                controller: tabController,
                tabs: const [
                  Tab(text: '1', icon: Icon(Icons.abc)),
                  Tab(text: '2', icon: Icon(Icons.abc)),
                ],
              ),
              const HopmeSearch(),
              const Expanded(
                child: AutoTabsRouter.tabBar(
                  routes: [
                    ServicesRoute(),
                    ProceduresRoute(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const LogoBottomSheet(),
    );
  }
}
