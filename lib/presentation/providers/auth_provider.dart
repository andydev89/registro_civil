import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_provider.g.dart';

@riverpod
class StepperIndex extends _$StepperIndex {
  @override
  int build() {
    return 0;
  }

  void increment() => state++;

  void decrement() => state--;
}
@riverpod
class AuthStepper2Data extends _$AuthStepper2Data {
  @override
  bool build() {
    return false;
  }
}
