import 'package:auto_route/auto_route.dart';
import 'package:registro_civil_apk/data/enum/simple_certificate/type_simple_certificate._enum.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

PageRouteInfo<dynamic> getSimpleCertificateRoute(
        TypeSimpleCertificateEnum type) =>
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
