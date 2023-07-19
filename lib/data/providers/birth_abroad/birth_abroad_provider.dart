import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:oxidized/oxidized.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
import 'package:registro_civil_apk/data/models/models.dart';
import 'package:registro_civil_apk/data/providers/auth/auth.dart';
import 'package:registro_civil_apk/data/providers/commons/commons.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'birth_abroad_provider.g.dart';

@riverpod
class BirthAbroadFilter extends _$BirthAbroadFilter {
  @override
  QueryBirthAbroad build() {
    return QueryBirthAbroad();
  }

  void setFilter(String filter) {
    state = state.copyWith(filter: filter);
  }
}

@riverpod
Future<ResponseModelPagination<List<BirthAbroadListModel>>> birthsAbroad(
  BirthsAbroadRef ref, {
  int? pageNo,
}) async {
  final query = ref.watch(birthAbroadFilterProvider);
  final api = ref.watch(apiProvider);
  final response = await api.birthsAbroad(
    pageNo: pageNo ?? query.pageNo,
    pageSize: query.pageSize,
    filter: query.filter,
  );
  return response;
}
