// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) =>
    ScheduleModel(
      id: json['id'] as String,
      stock: json['stock'] as int,
      date: DateTime.parse(json['date'] as String),
      startTime:
          const TimeOfDayConverter().fromJson(json['startTime'] as String),
      endingTime:
          const TimeOfDayConverter().fromJson(json['endingTime'] as String),
      agency: AgencyModel.fromJson(json['agency'] as Map<String, dynamic>),
      typeOfService: TypeOfServiceModel.fromJson(
          json['typeOfService'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduleModelToJson(ScheduleModel instance) =>
    <String, dynamic>{
      'agency': instance.agency,
      'date': instance.date.toIso8601String(),
      'endingTime': const TimeOfDayConverter().toJson(instance.endingTime),
      'id': instance.id,
      'startTime': const TimeOfDayConverter().toJson(instance.startTime),
      'stock': instance.stock,
      'typeOfService': instance.typeOfService,
    };
