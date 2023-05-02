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
