import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/router/router.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class CedulacionExtPvezSuccesPage extends StatelessWidget {
  const CedulacionExtPvezSuccesPage({
    super.key,
    this.title,
    this.subtitle,
  });

  final String? subtitle;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return TranslucentCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SuccessWidget().verticalPadding(50),
          Column(
            children: [
              PrimaryLabel(
                l10n.cedextpvSatisfactorio,
                color: Colors.black,
              ),
              const SizedBox(
                height: 50,
              ),
              PrimaryText(
                l10n.cedextpvInfoSatisfactorio,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                title: l10n.continuar,
                onPressed: () {
                  // context.popRoute(const HomeRouterRoute());
                  context.replaceRoute(const RootRouterRoute());
                },
              ).verticalPadding(10).horizontalPadding(20),
            ],
          ),
        ],
      ),
    );
  }
}
