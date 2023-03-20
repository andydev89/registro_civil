import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_shift/widgets/schedule_shift_scaffold.dart';

class ScheduleShiftRouterPage extends StatelessWidget {
  const ScheduleShiftRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AutoRouter(
        // builder: (context, content) => ScheduleShiftScaffold(
        //   body: Expanded(child: content),
        //   title: context.routeData.name,
        //   subtitle: 'Complete la informacion solicitada',
        // ),
        );
  }
}
