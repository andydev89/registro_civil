// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'querys_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueryScheduleByUser _$$_QueryScheduleByUserFromJson(
        Map<String, dynamic> json) =>
    _$_QueryScheduleByUser(
      pageNo: json['pageNo'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 20,
      filter: json['filter'] as String? ?? '',
      sortBy: json['sortBy'] as String? ?? 'time',
      from:
          json['from'] == null ? null : DateTime.parse(json['from'] as String),
      to: json['to'] == null ? null : DateTime.parse(json['to'] as String),
      sortType: $enumDecodeNullable(_$SortTypeEnumMap, json['sortType']) ??
          SortType.asc,
    );

Map<String, dynamic> _$$_QueryScheduleByUserToJson(
        _$_QueryScheduleByUser instance) =>
    <String, dynamic>{
      'pageNo': instance.pageNo,
      'pageSize': instance.pageSize,
      'filter': instance.filter,
      'sortBy': instance.sortBy,
      'from': instance.from?.toIso8601String(),
      'to': instance.to?.toIso8601String(),
      'sortType': _$SortTypeEnumMap[instance.sortType]!,
    };

const _$SortTypeEnumMap = {
  SortType.asc: 'asc',
  SortType.desc: 'desc',
};
