import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class DefaultSuccessPage extends StatelessWidget {
  const DefaultSuccessPage({
    super.key,
    required this.title,
    this.subtitle,

  });

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: title,
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                const SuccessWidget(),
                PrimaryTitle(
                  title: subtitle ?? l10n.solicitudExi,
                ),
              ],
            ),
            PrimaryButton(
              title: l10n.continuar,
              onPressed: () {
                context.popRoute();
              },
            ).symmetricPadding(10, 20),
          ],
        ),
      ),
    );
  }
}
