import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    final hour = int.parse(json.split(':')[0]);
    final minut = int.parse(json.split(':')[1]);
    return TimeOfDay(
      hour: hour,
      minute: minut,
    );
  }

  @override
  String toJson(TimeOfDay object) {
    return '${object.hour.toString().padLeft(2)}.${object.minute.toString().padLeft(2)}';
  }
}
