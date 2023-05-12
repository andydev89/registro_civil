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

PageRouteInfo<dynamic> getSchedule(TypeServiceModel typeOfService) =>
    ScheduleTurnRouterRoute(
      children: [
        ScheduleTurnFirstStepRouterRoute(
          typeOfService: typeOfService,
          children: [
            ScheduleTurnFirstStepPersonalRoute(typeOfService: typeOfService),
          ],
        ),
      ],
    );

PageRouteInfo<dynamic> getMarriageCelebration() =>
    const MarriageCelebrationPrincipalRoute();

PageRouteInfo<dynamic> getResidencyRegistration() =>
    const ResidenceRegistrationRouterRoute();

PageRouteInfo<dynamic> getChangeOfName() => const ChangeOfNameRouterRoute();

PageRouteInfo<dynamic> getRoute(TypeServiceModel typeServiceModel) {
  final type = typeServiceModel.type;
  if (type.isSimpleCertificate) {
    return getSimpleCertificateRoute(typeServiceModel);
  }
  if (type.isActaRegistral) {
    return getActaRegistral(typeServiceModel);
  }
  if (type.isSchedule) {
    return getSchedule(typeServiceModel);
  }
  if (type.isResidencyRegistration) {
    return getResidencyRegistration();
  }
  if (type.isChangeOfName) {
    return getChangeOfName();
  }
  return getMarriageCelebration();
}
