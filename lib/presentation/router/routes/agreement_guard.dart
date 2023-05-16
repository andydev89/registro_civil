import 'package:auto_route/auto_route.dart';
import 'package:registro_civil_apk/data/const/const.dart';
import 'package:registro_civil_apk/data/enum/commons/agreements_type.dart';
import 'package:registro_civil_apk/presentation/widgets/dialogs/dialogs.dart';

class AgreementGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final context = router.navigatorKey.currentContext;
    final agreementType = AgreementType.getByValue(
      resolver.route.meta[agreementTypeMetaName] as int,
    );
    final queryParams = resolver.route.queryParams;
    final showAgreeement = queryParams.get('showAgreement') as bool?;
    if (showAgreeement == false) {
      resolver.next();
      return;
    }
    final accept = await showAceptAgreement(
      context!,
      agreementType: agreementType,
    );
    resolver.next(accept ?? false);
  }
}
