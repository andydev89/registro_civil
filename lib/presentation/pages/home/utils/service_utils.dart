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
        ChangeNameMainRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getIdDuplicate(TypeServiceModel typeOfService) =>
    IdDuplicateRouterRoute(
      children: [
        IdDuplicateMainRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getElectronicSignature(TypeServiceModel typeOfService) =>
    ElectronicSignatureRouterRoute(
      children: [
        ElectronicSignatureMainRoute(typeServiceModel: typeOfService),
      ],
    );
PageRouteInfo<dynamic> getCedulacionExtPrimeraVez(
        TypeServiceModel typeOfService) =>
    CedulacionExtPvezRouterRoute(
      children: [
        CedulacionExtPvezMainRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getPersonalValidation(TypeServiceModel typeOfService) =>
    PersonalValidationRouterRoute(
      children: [
        PersonalValidationMainRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getBirthAbroad(TypeServiceModel typeOfService) =>
    BirthAbroadRouterRoute(
      children: [
        BirthAbroadMainRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getPaymentServconvdoc(TypeServiceModel typeOfService) =>
    PaymentServiceValDocRouterRoute(
      children: [
        PaymentServiceValDocFirstRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getPaymentServactnot(TypeServiceModel typeOfService) =>
    PaymentServiceIngActsNotRouterRoute(
      children: [
        PaymentServiceIngActsNotFirstRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getDocumentValidation(TypeServiceModel typeOfService) =>
    DocumentValidationFirstStepRouterRoute(
      children: [
        DocumentValidationFirstStepRoute(typeServiceModel: typeOfService),
      ],
    );

PageRouteInfo<dynamic> getDefault(TypeServiceModel typeOfService) =>
    DefaultRoute(typeServiceModel: typeOfService);

//adicionar getcedulacionextranjeroprimeravez

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
  if (type.isElectronicSignature) {
    return getElectronicSignature(typeServiceModel);
  }

  if (type.isCedulacionExtPriVez) {
    return getCedulacionExtPrimeraVez(typeServiceModel);
  }
  //agregar condicional para cedulacion extranjero primera vez

  if (type.isPersonalValidation) {
    return getPersonalValidation(typeServiceModel);
  }

  if (type.isDocumentValidation) {
    return getDocumentValidation(typeServiceModel);
  }

  if (type.isPaymentServactnot) {
    return getPaymentServactnot(typeServiceModel);
  }

  if (type.isPaymentServconvdoc) {
    return getPaymentServconvdoc(typeServiceModel);
  }

  return getDefault(typeServiceModel);
}
