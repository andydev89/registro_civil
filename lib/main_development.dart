import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:registro_civil_apk/app/app.dart';
import 'package:registro_civil_apk/bootstrap.dart';

void main() {
  bootstrap(() => const ProviderScope(child: App()));
}
