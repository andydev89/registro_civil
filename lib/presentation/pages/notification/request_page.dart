import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/buttons/primary_button.dart';
import 'package:registro_civil_apk/presentation/widgets/recharge_widget.dart';
import 'package:registro_civil_apk/presentation/widgets/scaffolds/primary_scaffold.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';

class RequestPage extends ConsumerWidget {
  const RequestPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.state,
  });
  final String title;
  final String subtitle;
  final AsyncValue<dynamic> state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return PrimaryScaffold(
      title: title,
      body: state.when(
        skipLoadingOnRefresh: false,
        loading: () => Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [CircularProgressIndicator()],
          ),
        ),
        error: (error, _) => Expanded(
          child: RechargeWidget(
            error: error.toString(),
            state: state as Refreshable<dynamic>,
          ),
        ),
        data: (_) => Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.svg.success2.svg(),
                  const SizedBox(height: 20),
                  PrimaryText(subtitle),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButton(
                    title: l10n.misPedidos,
                    // onPressed: () => context.navigateTo(MyOrdersRoute()),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 20),
                  PrimaryText(
                    l10n.envNotCorElectronicoDetallesDeSolicitud,
                    maxLines: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
