import 'package:flutter_svg/flutter_svg.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';

enum NotificationType {
  success,
  eror,
}

extension NotificationTypeExtension on NotificationType {
  SvgPicture get image {
    switch (this) {
      case NotificationType.success:
        return Assets.svg.success.svg();
      case NotificationType.eror:
        return Assets.svg.error.svg();
    }
  }
}
