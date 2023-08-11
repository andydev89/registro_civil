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

class PrimaryReactiveCalendarDatePicker extends StatelessWidget {
  const PrimaryReactiveCalendarDatePicker({
    super.key,
    required this.formControl,
    this.label,
    this.isLoading = false,
    this.hasError = false,
    this.onError,
    this.hintText,
    this.onPageChanged,
    this.onDaySelected,
    this.readOnly = false,
    this.firstDate,
    this.lastDate,
  });

  final FormControl<DateTime>? formControl;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? label;
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
                : Assets.svg.calendar
                    .svg(
                      width: 20,
                      height: 20,
                    )
                    .horizontalPadding(10),
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
                      DatePickerCalendar(
                        lastDate: lastDate,
                        firstDate: firstDate,
                        formControl: formControl,
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

class DatePickerCalendar extends StatefulWidget {
  const DatePickerCalendar({
    super.key,
    required this.formControl,
    this.onPageChanged,
    this.firstDate,
    this.onDaySelected,
    this.lastDate,
  });
  final FormControl<DateTime>? formControl;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final Future<List<DateTime>> Function(DateTime)? onPageChanged;
  final void Function(DateTime)? onDaySelected;

  @override
  State<DatePickerCalendar> createState() => _DatePickerCalendarState();
}

class _DatePickerCalendarState extends State<DatePickerCalendar> {
  DateTime _focusedDay = DateTime.now();

  @override
  void initState() {
    if (widget.formControl?.value != null) {
      _focusedDay = widget.formControl!.value!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: widget.firstDate ?? DateTime.now(),
      lastDay:
          widget.lastDate ?? DateTime.now().add(const Duration(days: 365 * 30)),
      focusedDay: _focusedDay,
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      onDaySelected: (selectedDay, focusedDay) {
        widget.formControl?.updateValue(selectedDay);
        widget.onDaySelected?.call(selectedDay);
        context.popRoute();
      },
      selectedDayPredicate: (day) {
        return _focusedDay == day;
      },
      onPageChanged: widget.onPageChanged,
      calendarStyle: CalendarStyle(
        selectedDecoration: ShapeDecoration(
          color: green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        defaultTextStyle: const TextStyle(
          color: Colors.black,
        ),
        /*weekendTextStyle: const TextStyle(
          color: Colors.grey,
        ),*/
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
                    DateFormat('MMMM, yyyy').format(day),
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
