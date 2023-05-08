import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_provider.g.dart';

@riverpod
class Page extends _$Page {
  @override
  int build(int id) {
    return 0;
  }

  @override
  set state(int index) {
    super.state = index;
  }
}
