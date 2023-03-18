import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/home/widgets/home_search.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/pages/root/widgets/finger_print_scaffold.dart';

class HomeRouterPage extends StatelessWidget {
  const HomeRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AutoTabsRouter.tabBar(
      routes: const [
        ServicesRoute(),
        ProceduresRoute(),
      ],
      builder: (context, child, tabController) => Column(
        children: [
          DecoratedBox(
            decoration: ShapeDecoration(
              shape: const StadiumBorder(),
              color: grey.withOpacity(0.4),
            ),
            child: TabBar(
              controller: tabController,
              unselectedLabelColor: Colors.grey,
              indicator: const ShapeDecoration(
                shape: StadiumBorder(),
                gradient: gradient,
              ),
              tabs: [
                Tab(text: l10n.servicios),
                Tab(text: l10n.tramites),
              ],
            ),
          ).symmetricPadding(20, 25),
          const HopmeSearch(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
