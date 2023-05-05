import 'package:registro_civil_apk/data/enum/sort/sort_type_enum.dart';

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

class QueryScheduleByUser {
  QueryScheduleByUser({
    this.pageNo = 0,
    this.pageSize = 20,
    this.filter = '',
    this.sortBy = 'time',
    this.from = '',
    this.to = '',
    this.sortType = SortType.asc,
  });

  final int pageNo;
  final int pageSize;
  final String filter;
  final String from;
  final String to;
  final String sortBy;
  final SortType sortType;

  QueryScheduleByUser copyWith({
    int? pageNo,
    int? pageSize,
    String? filter,
    String? from,
    String? to,
    String? sortBy,
    SortType? sortType,
  }) {
    return QueryScheduleByUser(
      pageNo: pageNo ?? this.pageNo,
      pageSize: pageSize ?? this.pageSize,
      filter: filter ?? this.filter,
      sortBy: sortBy ?? this.sortBy,
      sortType: sortType ?? this.sortType,
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }
}
