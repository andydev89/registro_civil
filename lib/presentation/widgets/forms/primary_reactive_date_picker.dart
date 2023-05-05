import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/status/loading_status_adaptative.dart';
import 'package:registro_civil_apk/presentation/widgets/status/refresh_status.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:table_calendar/table_calendar.dart';

class PrimaryReactiveDatePicker extends StatelessWidget {
  const PrimaryReactiveDatePicker({
    super.key,
    required this.formControl,
    this.label,
    this.availablesDate = const [],
    this.isLoading = false,
    this.hasError = false,
    this.onError,
    this.hintText,
    this.onPageChanged,
    this.onDaySelected,
    this.readOnly = false,
  });

  final FormControl<DateTime> formControl;
  final String? label;
  final List<DateTime> availablesDate;
  final bool isLoading;
  final bool hasError;
  final void Function()? onError;
  final String? hintText;
  final Future<List<DateTime>> Function(DateTime)? onPageChanged;
  final void Function(DateTime)? onDaySelected;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AbsorbPointer(
      absorbing: readOnly || isLoading,
      child: PrimaryReactiveTextField(
        label: label,
        readOnly: readOnly || isLoading,
        hintText: hasError
            ? l10n.errorAlObtenerLosDatos
            : isLoading
                ? l10n.cargando
                : hintText ?? '${l10n.seleccione}...',
        suffixIcon: hasError
            ? RefreshStatus(onRefresh: onError)
            : isLoading
                ? const LoadingStatusAdaptative()
                : Assets.svg.calendar.svg(),
        onTap: (control) => !readOnly || isLoading
            ? showDialog<Widget>(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomCalendar(
                        formControl: formControl,
                        availablesDate: availablesDate,
                        onPageChanged: onPageChanged,
                        onDaySelected: onDaySelected,
                      ).horizontalPadding(5),
                    ],
                  ),
                ).withRevealAnimation,
              )
            : null,
        formControl: formControl,
        setSuffixIconConstraints: true,
      ),
    );
  }
}

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    super.key,
    required this.formControl,
    required this.availablesDate,
    this.onPageChanged,
    this.onDaySelected,
  });
  final FormControl<DateTime> formControl;
  final List<DateTime> availablesDate;
  final Future<List<DateTime>> Function(DateTime)? onPageChanged;
  final void Function(DateTime)? onDaySelected;

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _focusedDay = DateTime.now();
  // final Set<DateTime> _selectedDays = LinkedHashSet<DateTime>(
  //   equals: isSameDay,
  //   hashCode: _getHashCode,
  // );

  @override
  void initState() {
    super.initState();
    // widget.formControl.value?.forEach(_selectedDays.add);
  }

  // void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
  //   setState(() {
  //     _focusedDay = focusedDay;
  //     // Update values in a Set
  //     if (_selectedDays.contains(selectedDay)) {
  //       _selectedDays.remove(selectedDay);
  //     } else {
  //       _selectedDays.add(selectedDay);
  //     }
  //     if (_selectedDays.isNotEmpty) {
  //       widget.formControl.updateValue(_selectedDays.toList());
  //       final formatedListDate = _selectedDays
  //           .toList()
  //           .map((e) => DateFormat.yMd().format(e))
  //           .reduce((value, element) => '$value, $element');
  //       widget.dateRangeToShow.updateValue(formatedListDate);
  //     } else {
  //       widget.dateRangeToShow.reset();
  //       widget.formControl.reset();
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.now(),
      lastDay: DateTime.now().add(const Duration(days: 365 * 30)),
      onPageChanged: (focusedDay) async {
        final availablesDays =
            await widget.onPageChanged?.call(focusedDay) ?? [];
        setState(() {
          widget.availablesDate.clear();
          widget.availablesDate.addAll(availablesDays);
          _focusedDay = focusedDay;
        });
      },
      focusedDay: _focusedDay,
      // selectedDayPredicate: (day) =>  _selectedDays.contains(day)
      selectedDayPredicate: (day) {
        return widget.availablesDate.any(
              (element) => DateUtils.isSameDay(element, day),
            ) &&
            !day.isBefore(DateTime.now());
      },
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (widget.availablesDate
                .any((element) => DateUtils.isSameDay(element, selectedDay)) &&
            !selectedDay.isBefore(DateTime.now())) {
          widget.formControl.updateValue(selectedDay);
          widget.onDaySelected?.call(selectedDay);
          context.popRoute();
        }
      },
      calendarStyle: CalendarStyle(
        selectedDecoration: ShapeDecoration(
          color: green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        defaultTextStyle: const TextStyle(
          color: Colors.grey,
        ),
        weekendTextStyle: const TextStyle(
          color: Colors.grey,
        ),
        outsideDaysVisible: false,
        todayDecoration: const BoxDecoration(
          color: blue,
          shape: BoxShape.circle,
        ),
      ),
      calendarBuilders: CalendarBuilders<dynamic>(
        headerTitleBuilder: (context, day) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: PrimaryText(
                    DateFormat.MMMM().format(day),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// int _getHashCode(DateTime key) {
//   return key.day * 1000000 + key.month * 10000 + key.year;
// }
