import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStepperRiv = StateProvider.autoDispose<int>((ref) => 0);

final authStepper2Data = StateProvider.autoDispose<bool>((ref) => false);
