import 'package:registro_civil_apk/data/enum/routes_enum.dart';

extension RoutesExtension on RoutesEnum {
  String get route => toString().split('.').last;
}
