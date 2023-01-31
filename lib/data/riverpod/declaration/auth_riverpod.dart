import 'package:flutter_riverpod/flutter_riverpod.dart';

final authStepperRiv = StateProvider.autoDispose<int>((ref) => 0);
