import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class SearchHome extends _$SearchHome {
  @override
  String build() {
    return '';
  }

  @override
  String get state;

  @override
  set state(String filter) {
    super.state = filter;
  }

  void emptyFilter() => state = '';
}
