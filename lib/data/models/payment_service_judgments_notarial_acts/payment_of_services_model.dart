import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:registro_civil_apk/data/interfaces/translatable_interface.dart';

part 'payment_of_services_model.g.dart';

part 'payment_of_services_model.freezed.dart';

@freezed
class PaymentofservicesModel with _$PaymentofservicesModel, Translatable {
  const factory PaymentofservicesModel({
    required String id,
    required String code,
    required String name,
  }) = _PaymentofservicesModel;

  factory PaymentofservicesModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentofservicesModelFromJson(json);

  const PaymentofservicesModel._(); // Added constructor

  @override
  String translate(BuildContext context) => name;

  static String paymentofservicesToJson(PaymentofservicesModel instance) =>
      instance.id;
  static String? paymentofservicesToJsonNull(
          PaymentofservicesModel? instance) =>
      instance?.id;

  static PaymentofservicesModel? provinceFromJson(Map<String, dynamic> json) {
    final modified = <String, dynamic>{
      'id': json['id'],
      'code': json['code'],
      'name': json['name'],
    };
    return PaymentofservicesModel.fromJson(modified);
  }
}
