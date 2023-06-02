import 'package:auto_route/auto_route.dart';
import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';

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
      builder: (context, child, tabController) => ExtendedNestedScrollView(
        physics: const NeverScrollableScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: ShapeDecoration(
                      shape: const StadiumBorder(),
                      color: grey.withOpacity(0.4),
                    ),
                    child: TabBar(
                      controller: tabController,
                      unselectedLabelColor: Colors.grey,
                      splashBorderRadius: BorderRadius.circular(1000),
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
                ],
              ),
            ),
          ];
        },
        body: child,
      ),
    );
  }
}
