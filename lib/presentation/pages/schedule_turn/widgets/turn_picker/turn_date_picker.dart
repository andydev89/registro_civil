import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/extensions/extensions.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/schedule_turn/schedule_turn_provider.dart';
import 'package:registro_civil_apk/presentation/pages/schedule_turn/widgets/turn_picker/reactive_date_turn_picker.dart';

class TurnDatePicker extends ConsumerStatefulWidget {
  const TurnDatePicker({
    super.key,
    required this.label,
    required this.formControl,
    required this.scheduleId,
    required this.typeOfServiceModel,
    required this.agency,
    required this.starDate,
    required this.initialTime,
    required this.endTime,
    this.readOnly = false,
  });

  final FormControl<DateTime> formControl;
  final FormControl<String> scheduleId;
  final FormControl<TimeOfDay>? initialTime;
  final FormControl<TimeOfDay>? endTime;
  final String label;
  final TypeServiceModel typeOfServiceModel;
  final FormControl<AgencyModel> agency;
  final DateTime starDate;
  final bool readOnly;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ScheduleDatePickerState();
}

class _ScheduleDatePickerState extends ConsumerState<TurnDatePicker> {
  final ValueNotifier<List<DateTime>> _availableDatesNotifier =
      ValueNotifier<List<DateTime>>([]);
  final ValueNotifier<bool> _loadingDates = ValueNotifier<bool>(false);
  DateTime _focusDate = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dates = <DateTime>[];
    final schedules = ref.watch(
      availableSchedulesProvider(
        startDate: widget.starDate,
        endDate: widget.starDate.lastDateOfMonth,
        agency: widget.agency.value?.id ?? '',
        typeOfService: widget.typeOfServiceModel.id,
        special: false,
      ),
    );
    dates = schedules.asData?.value.when(
          ok: (data) => data.map((e) => e.date).toList(),
          err: (error) => [],
        ) ??
        [];
    _availableDatesNotifier.value = dates;
    widget.agency.statusChanged.listen((event) {
      if (widget.agency.valid) {
        widget.formControl.reset();
        return ref.refresh(
          availableSchedulesProvider(
            startDate: widget.starDate,
            endDate: widget.starDate.lastDateOfMonth,
            agency: widget.agency.value?.id ?? '',
            typeOfService: widget.typeOfServiceModel.id,
            special: false,
          ),
        );
      }
    });
    return ReactiveDateTurnPicker(
      key: widget.key,
      formControl: widget.formControl,
      readOnly: widget.readOnly,
      label: widget.label,
      availablesDateNotifier: _availableDatesNotifier,
      isLoading: schedules.isLoading,
      loadingDatesNotifier: _loadingDates,
      hasError: schedules.hasError,
      focusDate: _focusDate,
      onError: () => ref.refresh(
        availableSchedulesProvider(
          startDate: widget.starDate,
          endDate: widget.starDate.lastDateOfMonth,
          agency: widget.agency.value?.id ?? '',
          typeOfService: widget.typeOfServiceModel.id,
          special: false,
        ),
      ),
      onDaySelected: (selectedDay) async {
        final schedulesTemp = schedules.asData?.value.when(
              ok: (data) => data.map((e) => e).toList(),
              err: (error) => <ScheduleModel>[],
            ) ??
            <ScheduleModel>[];
        final selectedSchedue = schedulesTemp.firstWhere(
          (element) => element.date.onlyDate == selectedDay.onlyDate,
        );
        widget.initialTime?.updateValue(selectedSchedue.startTime);
        widget.endTime?.updateValue(selectedSchedue.endingTime);
        widget.scheduleId.updateValue(selectedSchedue.id);
      },
      onPageChanged: (date) async {
        _loadingDates.value = true;
        final result = await ref.refresh(
          availableSchedulesProvider(
            startDate: date,
            endDate: date.lastDateOfMonth,
            agency: widget.agency.value?.id ?? '',
            typeOfService: widget.typeOfServiceModel.id,
            special: false,
          ).future,
        );
        final d = result.when(
          ok: (data) => data.map((e) => e.date).toList(),
          err: (error) => <DateTime>[],
        );
        _focusDate = date;
        _availableDatesNotifier.value = d;
        _loadingDates.value = false;

        return d;
      },
    );
  }
}
