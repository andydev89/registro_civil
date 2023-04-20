import 'package:auto_route/auto_route.dart';
import 'package:registro_civil_apk/data/enum/services/services_type.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

PageRouteInfo<dynamic> getSimpleCertificateRoute(
  TypeSimpleCertificateEnum type,
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
