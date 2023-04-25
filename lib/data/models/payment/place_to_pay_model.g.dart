// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_to_pay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceToPayModel _$PlaceToPayModelFromJson(Map<String, dynamic> json) =>
    PlaceToPayModel(
      clientId: json['clientId'] as String,
      transactionCode: json['transactionCode'] as String,
      locale: json['locale'] as String,
      payer: json['payer'],
      buyer: Buyer.fromJson(json['buyer'] as Map<String, dynamic>),
      payment: Payment.fromJson(json['payment'] as Map<String, dynamic>),
      subscription: json['subscription'],
      paymentMethod: json['paymentMethod'],
      expiration: json['expiration'] as String,
      returnUrl: json['returnUrl'] as String,
      cancelUrl: json['cancelUrl'] as String,
      ipAddress: json['ipAddress'] as String,
      userAgent: json['userAgent'] as String,
      skipResult: json['skipResult'] as bool,
      noBuyerFill: json['noBuyerFill'] as bool,
      fields: json['fields'] as List<dynamic>,
    );

Map<String, dynamic> _$PlaceToPayModelToJson(PlaceToPayModel instance) =>
    <String, dynamic>{
      'buyer': instance.buyer,
      'cancelUrl': instance.cancelUrl,
      'clientId': instance.clientId,
      'expiration': instance.expiration,
      'fields': instance.fields,
      'ipAddress': instance.ipAddress,
      'locale': instance.locale,
      'noBuyerFill': instance.noBuyerFill,
      'payer': instance.payer,
      'payment': instance.payment,
      'paymentMethod': instance.paymentMethod,
      'returnUrl': instance.returnUrl,
      'skipResult': instance.skipResult,
      'subscription': instance.subscription,
      'transactionCode': instance.transactionCode,
      'userAgent': instance.userAgent,
    };

Buyer _$BuyerFromJson(Map<String, dynamic> json) => Buyer(
      name: json['name'] as String,
      email: json['email'] as String,
      documentType: json['documentType'] as String,
      document: json['document'] as String,
      surname: json['surname'] as String,
      company: json['company'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      mobile: json['mobile'] as String,
    );

Map<String, dynamic> _$BuyerToJson(Buyer instance) => <String, dynamic>{
      'address': instance.address,
      'company': instance.company,
      'document': instance.document,
      'documentType': instance.documentType,
      'email': instance.email,
      'mobile': instance.mobile,
      'name': instance.name,
      'surname': instance.surname,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['street'] as String,
      city: json['city'] as String,
      estate: json['estate'] as String,
      postalCode: json['postalCode'] as String,
      country: json['country'] as String,
      phone: json['phone'],
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'estate': instance.estate,
      'phone': instance.phone,
      'postalCode': instance.postalCode,
      'street': instance.street,
    };

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      reference: json['reference'] as String,
      description: json['description'] as String,
      amount: Amount.fromJson(json['amount'] as Map<String, dynamic>),
      allowPartial: json['allowPartial'] as bool,
      shipping: Buyer.fromJson(json['shipping'] as Map<String, dynamic>),
      items: json['items'],
      processorFields: json['processorFields'] as List<dynamic>,
      subscribe: json['subscribe'] as bool,
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'allowPartial': instance.allowPartial,
      'amount': instance.amount,
      'description': instance.description,
      'items': instance.items,
      'processorFields': instance.processorFields,
      'reference': instance.reference,
      'shipping': instance.shipping,
      'subscribe': instance.subscribe,
    };

Amount _$AmountFromJson(Map<String, dynamic> json) => Amount(
      taxes: (json['taxes'] as List<dynamic>)
          .map((e) => Taxes.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['details'] as List<dynamic>,
      currency: json['currency'] as String,
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$AmountToJson(Amount instance) => <String, dynamic>{
      'currency': instance.currency,
      'details': instance.details,
      'taxes': instance.taxes,
      'total': instance.total,
    };

Taxes _$TaxesFromJson(Map<String, dynamic> json) => Taxes(
      kind: json['kind'] as String,
      amount: (json['amount'] as num).toDouble(),
      base: (json['base'] as num).toDouble(),
    );

Map<String, dynamic> _$TaxesToJson(Taxes instance) => <String, dynamic>{
      'amount': instance.amount,
      'base': instance.base,
      'kind': instance.kind,
    };
