import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/data/enum/sort/sort.dart';
import 'package:registro_civil_apk/data/models/commons/querys_model.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_turn_provider.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/widgets/widgets.dart';

class MyTurnsFilterWidget extends ConsumerWidget {
  const MyTurnsFilterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final model = ref.watch(schedulesByUserFilterProvider);
    return QueryScheduleByUserFormBuilder(
      model: model,
      builder: (context, formModel, child) => SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ReactiveQueryScheduleByUserFormConsumer(
              builder: (_, __, ___) => PrimaryReactiveDatePicker(
                label: l10n.desde,
                firstDate: DateTime(2023),
                initFocusedDay: true,
                lastDate: formModel.toControl?.value,
                formControl: formModel.fromControl,
                availablesDate: null,
              ),
            ),
            ReactiveQueryScheduleByUserFormConsumer(
              builder: (_, __, ___) => PrimaryReactiveDatePicker(
                firstDate: formModel.fromControl?.value ?? DateTime(2023),
                label: l10n.hasta,
                initFocusedDay: true,
                formControl: formModel.toControl,
                availablesDate: null,
              ),
            ),
            PrimaryReactiveDropdown(
              label: l10n.orden,
              formControl: formModel.sortTypeControl,
              items: SortType.values,
            ),
            const SizedBox(
              height: 20,
            ),
            ReactiveQueryScheduleByUserFormConsumer(
              builder: (_, formModel, __) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButton(
                    title: l10n.filtrar,
                    onPressed: formModel.form.valid
                        ? () {
                            Navigator.pop(context);
                            ref
                                .read(schedulesByUserFilterProvider.notifier)
                                .setOther(formModel.model);
                          }
                        : null,
                  ),
                  PrimaryTextButton(
                    title: l10n.limpiar,
                    onPressed: () {
                      Navigator.pop(context);
                      ref
                          .read(schedulesByUserFilterProvider.notifier)
                          .clearOtherFilter();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
