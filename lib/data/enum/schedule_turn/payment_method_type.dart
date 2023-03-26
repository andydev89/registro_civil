import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';
import 'package:registro_civil_apk/presentation/router/routes/router.dart';

enum PaymentMethodType {
  ///Pago corresponsal
  correspondentPayment('Pago corresponsal'),
  placeToPay('Place to pay');

  const PaymentMethodType(this.toText);
  final String toText;
}

extension PaymentMethodTypeExtension on PaymentMethodType {
  // PageRouteInfo getRoute(
  //   int requestNumber,
  //   double totalToPay,
  // ) {
  //   switch (this) {
  //     case PaymentMethodType.correspondentPayment:
  //       return CodeRoute(
  //         requestNumber: requestNumber,
  //         totalToPay: totalToPay,
  //       );
  //     case PaymentMethodType.placeToPay:
  //       return SelectPaymentRoute(
  //         requestNumber: requestNumber,
  //         totalToPay: totalToPay,
  //       );
  //   }
  // }

  SvgPicture getIcon() {
    switch (this) {
      case PaymentMethodType.correspondentPayment:
        return Assets.svg.correspondentPayment.svg(width: 50);
      case PaymentMethodType.placeToPay:
        return Assets.svg.placeToPayPayment.svg(width: 50);
    }
  }

  SvgPicture getText() {
    switch (this) {
      case PaymentMethodType.correspondentPayment:
        return Assets.svg.ccorrespondentPaymentText.svg();
      case PaymentMethodType.placeToPay:
        return Assets.svg.placeToPayPaymentText.svg();
    }
  }
}
