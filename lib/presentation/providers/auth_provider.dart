import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_provider.g.dart';

@riverpod
class StepperIndex extends _$StepperIndex {
  @override
  int build() {
    return 0;
  }

  set index(int idnex) {
    state = idnex;
  }

  int get index => state;
}
