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
@riverpod
class AuthStepper2Data extends _$AuthStepper2Data {
  @override
  bool build() {
    return false;
  }

@override
  set state(bool state) {
    this.state = state;
  }

@override
  bool get state => state;
}
