import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class SearchHome extends _$SearchHome {
  @override
  String build() {
    return '';
  }

  void emptyFilter() => state = '';
}
