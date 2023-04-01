import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:popover/popover.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:table_calendar/table_calendar.dart';

class PrimaryReactiveDatePicker extends StatelessWidget {
  const PrimaryReactiveDatePicker({
    super.key,
    required this.formControl,
    this.label,
    this.availablesDate = const [],
  });

  final FormControl<DateTime> formControl;
  final String? label;
  final List<DateTime> availablesDate;

  @override
  Widget build(BuildContext context) {
    return PrimaryReactiveTextField(
      label: label,
      readOnly: true,
      suffixIcon: Assets.svg.calendar.svg(),
      onTap: (control) => showPopover(
        context: context,
        bodyBuilder: (context) => AspectRatio(
          aspectRatio: 5 / 6,
          child: CustomCalendar(
            formControl: formControl,
            availablesDate: availablesDate,
          ),
        ),
        radius: 20,
        width: 330,
        arrowHeight: 0,
        arrowWidth: 0,
      ),
      formControl: formControl,
      setSuffixIconConstraints: true,
    );
  }
}

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({
    super.key,
    required this.formControl,
    required this.availablesDate,
  });
  final FormControl<DateTime> formControl;
  final List<DateTime> availablesDate;

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  final DateTime _focusedDay = DateTime.now();
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
      firstDay: DateTime(2010, 10, 16),
      lastDay: DateTime.now().add(const Duration(days: 365 * 30)),
      focusedDay: _focusedDay,
      // selectedDayPredicate: (day) =>  _selectedDays.contains(day)
      selectedDayPredicate: (day) => widget.availablesDate.any(
        (element) => DateUtils.isSameDay(element, day),
      ),
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      onDaySelected: (selectedDay, focusedDay) {
        widget.formControl.updateValue(selectedDay);
        context.popRoute();
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

int _getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}
