import 'package:auto_route/auto_route.dart';
import 'package:registro_civil_apk/data/models/services/type_services_model.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

PageRouteInfo<dynamic> getSimpleCertificateRoute(
  TypeServiceModel type,
) =>
    SimpleCertificateRouterRoute(
      children: [
        SimpleCertificateFirstStepRouterRoute(
          typeSimpleCertificate: type,
          children: [
            SimpleCertificateFirstStepFamiliarRoute(
              typeSimpleCertificate: type,
            ),
          ],
        ),
      ],
    );

PageRouteInfo<dynamic> getActaRegistral(
  TypeServiceModel type,
) =>
    SimpleCertificateRouterRoute(
      children: [
        SimpleCertificateFirstStepRouterRoute(
          typeSimpleCertificate: type,
          children: [
            SimpleCertificateFirstStepFamiliarRoute(
              typeSimpleCertificate: type,
            ),
          ],
        ),
      ],
    );

PageRouteInfo<dynamic> getSchedule() => const ScheduleTurnRouterRoute();
PageRouteInfo<dynamic> getMarriageCelebration() =>
    const MarriageCelebrationRouterRoute();

PageRouteInfo<dynamic> getRoute(TypeServiceModel typeServiceModel) {
  final type = typeServiceModel.type;
  if (type.isSimpleCertificate) {
    return getSimpleCertificateRoute(typeServiceModel);
  }
  if (type.isActaRegistral) {
    return getActaRegistral(typeServiceModel);
  }
  if (type.isSchedule) {
    return getSchedule();
  }
  return getMarriageCelebration();
}
