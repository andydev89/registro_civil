import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_ups/extensions/extensions.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/l10n/l10n.dart';
import 'package:registro_civil_apk/presentation/theme/theme.dart';
import 'package:registro_civil_apk/presentation/widgets/forms/primary_reactive_text_field.dart';
import 'package:registro_civil_apk/presentation/widgets/status/status.dart';
import 'package:registro_civil_apk/presentation/widgets/titles/primary_text.dart';
import 'package:table_calendar/table_calendar.dart';

class ReactiveDateTurnPicker extends StatelessWidget {
  const ReactiveDateTurnPicker({
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
    required this.focusDate,
    this.initFocusedDay = false,
    this.availablesDateNotifier,
    required this.loadingDatesNotifier,
  });

  final FormControl<DateTime>? formControl;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final DateTime focusDate;
  final bool initFocusedDay;
  final String? label;
  final List<DateTime> availablesDate;
  final bool isLoading;
  final bool hasError;
  final void Function()? onError;
  final String? hintText;
  final Future<List<DateTime>> Function(DateTime)? onPageChanged;
  final void Function(DateTime)? onDaySelected;
  final bool readOnly;
  final ValueNotifier<List<DateTime>>? availablesDateNotifier;
  final ValueNotifier<bool> loadingDatesNotifier;

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
                  child: StatefulBuilder(
                    builder: (context, setState) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ValueListenableBuilder<List<DateTime>>(
                            valueListenable: availablesDateNotifier ??
                                ValueNotifier<List<DateTime>>([]),
                            builder: (context, availablesDate, _) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SecondCustomCalendar(
                                    initFocusedDay: initFocusedDay,
                                    lastDate: lastDate,
                                    firstDate: firstDate,
                                    focusDate: focusDate,
                                    formControl: formControl,
                                    availablesDate: availablesDate,
                                    onPageChanged: onPageChanged,
                                    onDaySelected: onDaySelected,
                                  ).horizontalPadding(5),
                                ],
                              );
                            },
                          ),
                          ValueListenableBuilder<bool>(
                            valueListenable: loadingDatesNotifier,
                            builder: (context, loading, _) {
                              return loading
                                  ? const Padding(
                                      padding: EdgeInsets.only(bottom: 8),
                                      child: HorizontalSpinner(),
                                    )
                                  : Container();
                            },
                          ),
                        ],
                      );
                    },
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

class SecondCustomCalendar extends StatefulWidget {
  const SecondCustomCalendar({
    super.key,
    required this.formControl,
    required this.availablesDate,
    required this.focusDate,
    this.onPageChanged,
    this.firstDate,
    this.onDaySelected,
    this.lastDate,
    required this.initFocusedDay,
    this.availablesDateNotifier,
  });

  final FormControl<DateTime>? formControl;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool initFocusedDay;
  final List<DateTime>? availablesDate;
  final DateTime focusDate;
  final Future<List<DateTime>> Function(DateTime)? onPageChanged;
  final void Function(DateTime)? onDaySelected;
  final ValueNotifier<List<DateTime>>? availablesDateNotifier;

  @override
  State<SecondCustomCalendar> createState() => _SecondCustomCalendarState();
}

class _SecondCustomCalendarState extends State<SecondCustomCalendar> {
  DateTime _focusedDay = DateTime.now();

  @override
  void initState() {
    /*_focusedDay = widget.initFocusedDay
        ? (widget.formControl?.value ?? DateTime.now())
        : DateTime.now();*/
    super.initState();
  }

  bool isValidDay(DateTime day) {
    return widget.availablesDate!.any(
          (element) => DateUtils.isSameDay(element, day),
        ) &&
        (day.isAfter(DateTime.now()) ||
            DateUtils.isSameDay(day, DateTime.now()));
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

        return isValidDay(day);
      },
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      onDaySelected: (selectedDay, focusedDay) {
        if (widget.availablesDate == null || isValidDay(selectedDay)) {
          widget.formControl?.updateValue(selectedDay);
          widget.onDaySelected?.call(selectedDay);
          context.popRoute();
        }
      },
      onPageChanged: (date) {
        _focusedDay = date;
        widget.onPageChanged!(date);
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
