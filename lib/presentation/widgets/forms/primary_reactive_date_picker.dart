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
    this.firstDate,
    this.lastDate,
    this.initFocusedDay = false,
  });

  final FormControl<DateTime>? formControl;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool initFocusedDay;
  final String? label;
  final List<DateTime>? availablesDate;
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
                      CustomCalendar(
                        initFocusedDay: initFocusedDay,
                        lastDate: lastDate,
                        firstDate: firstDate,
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
    this.firstDate,
    this.onDaySelected,
    this.lastDate,
    required this.initFocusedDay,
  });
  final FormControl<DateTime>? formControl;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool initFocusedDay;
  final List<DateTime>? availablesDate;
  final Future<List<DateTime>> Function(DateTime)? onPageChanged;
  final void Function(DateTime)? onDaySelected;

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  late DateTime _focusedDay;

  @override
  void initState() {
    _focusedDay = widget.initFocusedDay
        ? (widget.formControl?.value ?? DateTime.now())
        : DateTime.now();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: widget.firstDate ?? DateTime.now(),
      lastDay:
          widget.lastDate ?? DateTime.now().add(const Duration(days: 365 * 30)),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) {
        if (widget.availablesDate == null) return true;

        return widget.availablesDate!.any(
              (element) => DateUtils.isSameDay(element, day),
            ) &&
            !day.isBefore(DateTime.now());
      },
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (widget.availablesDate == null ||
            (widget.availablesDate!.any(
                  (element) => DateUtils.isSameDay(element, selectedDay),
                ) &&
                !selectedDay.isBefore(DateTime.now()))) {
          widget.formControl?.updateValue(selectedDay);
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
