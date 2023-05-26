import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:registro_civil_apk/data/enum/sort/sort_type.dart';

part 'querys_model.g.dart';
part 'querys_model.freezed.dart';
part 'querys_model.gform.dart';

class QueryTypeService {
  QueryTypeService({
    this.pageNo = 0,
    this.pageSize = 4,
    this.filter = '',
    this.sortBy = 'name',
    this.sortType = SortType.asc,
  });

  final int pageNo;
  final int pageSize;
  final String filter;
  final String sortBy;
  final SortType sortType;

  QueryTypeService copyWith({
    int? pageNo,
    int? pageSize,
    String? filter,
    String? sortBy,
    SortType? sortType,
  }) {
    return QueryTypeService(
      pageNo: pageNo ?? this.pageNo,
      pageSize: pageSize ?? this.pageSize,
      filter: filter ?? this.filter,
      sortBy: sortBy ?? this.sortBy,
      sortType: sortType ?? this.sortType,
    );
  }
}

@ReactiveFormAnnotation()
@freezed
class QueryScheduleByUser with _$QueryScheduleByUser {
  const factory QueryScheduleByUser({
    @FormControlAnnotation<int>() @Default(0) int pageNo,
    @FormControlAnnotation<int>() @Default(20) int pageSize,
    @FormControlAnnotation<String>() @Default('') String filter,
    @FormControlAnnotation<String>() @Default('time') String sortBy,
    @FormControlAnnotation<DateTime>() DateTime? from,
    @FormControlAnnotation<DateTime>() DateTime? to,
    @FormControlAnnotation<SortType>() @Default(SortType.asc) SortType sortType,
  }) = _QueryScheduleByUser;

  const QueryScheduleByUser._();

  factory QueryScheduleByUser.fromJson(Map<String, dynamic> json) =>
      _$QueryScheduleByUserFromJson(json);
}

class QueryMarriages {
  QueryMarriages({
    this.pageNo = 0,
    this.pageSize = 20,
    this.state = '',
    this.userNui = '',
    this.userId = '',
    this.createdAt = '',
    this.updatedAt = '',
    this.interviewAt = '',
    this.amountOfDays = '',
    this.provinceName = '',
    this.cantonName = '',
    this.agencyName = '',
    this.filter = '',
  });

  final int pageNo;
  final int pageSize;
  final String state;
  final String userNui;
  final String userId;
  final String createdAt;
  final String updatedAt;
  final String interviewAt;
  final String amountOfDays;
  final String provinceName;
  final String cantonName;
  final String agencyName;
  final String filter;

  QueryMarriages copyWith({
    int? pageNo,
    int? pageSize,
    String? state,
    String? userNui,
    String? userId,
    String? createdAt,
    String? updatedAt,
    String? interviewAt,
    String? amountOfDays,
    String? provinceName,
    String? cantonName,
    String? agencyName,
    String? filter,
  }) {
    return QueryMarriages(
      pageNo: pageNo ?? this.pageNo,
      pageSize: pageSize ?? this.pageSize,
      state: state ?? this.state,
      userNui: userNui ?? this.userNui,
      userId: userId ?? this.userId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      interviewAt: interviewAt ?? this.interviewAt,
      amountOfDays: amountOfDays ?? this.amountOfDays,
      provinceName: provinceName ?? this.provinceName,
      cantonName: cantonName ?? this.cantonName,
      agencyName: agencyName ?? this.agencyName,
      filter: filter ?? this.filter,
    );
  }
}
