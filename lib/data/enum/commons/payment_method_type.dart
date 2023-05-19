import 'package:flutter_svg/flutter_svg.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:registro_civil_apk/core/gen/assets.gen.dart';

enum PaymentMethodType {
  ///Pago corresponsal
  @JsonValue('CORRESPONDENT')
  correspondentPayment('Pago corresponsal'),
  @JsonValue('PLACETOPAY')
  placeToPay('Place to pay');

  const PaymentMethodType(this.toText);
  final String toText;
}

extension PaymentMethodTypeExtension on PaymentMethodType {
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
        return Assets.svg.correspondentPaymentText.svg();
      case PaymentMethodType.placeToPay:
        return Assets.svg.placeToPayPaymentText.svg();
    }
  }
}
