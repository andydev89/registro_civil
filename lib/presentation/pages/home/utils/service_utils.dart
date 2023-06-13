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
     MarriageCelebrationRouterRoute();

PageRouteInfo<dynamic> getResidencyRegistration() =>
    ResidenceRegistrationRouterRoute();

PageRouteInfo<dynamic> getChangeOfName(TypeServiceModel typeOfService) =>
    ChangeOfNameRouterRoute(
      children: [
        ChangeOfNameFirstStepRoute(typeService: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getIdDuplicate(TypeServiceModel typeOfService) =>
    IdDuplicateRouterRoute(
      children: [
        IdDuplicateMainRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getDefault(TypeServiceModel typeOfService) =>
    DefaultRoute(typeServiceModel: typeOfService);

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
    return getChangeOfName(typeServiceModel);
  }
  if (type.isIdDuplicate) {
    return getIdDuplicate(typeServiceModel);
  }
  if (type.isMarriageCelebration) {
    return getMarriageCelebration();
  }
  return getDefault(typeServiceModel);
}
