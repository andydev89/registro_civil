// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_to_pay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceToPayModel _$PlaceToPayModelFromJson(Map<String, dynamic> json) =>
    PlaceToPayModel(
      clientId:
          json['ClientId'] as String? ?? '2fe5364c-bdd7-4422-8fbe-ac67d8c83c99',
      transactionCode: json['TransactionCode'] as String? ?? 'RC-PAYMENT',
      locale: json['Locale'] as String? ?? 'es_EC',
      payer: json['Payer'],
      buyer: Buyer.fromJson(json['Buyer'] as Map<String, dynamic>),
      payment: Payment.fromJson(json['Payment'] as Map<String, dynamic>),
      subscription: json['Subscription'],
      paymentMethod: json['PaymentMethod'],
      expiration: json['Expiration'] as String,
      returnUrl: json['ReturnUrl'] as String,
      cancelUrl: json['CancelUrl'] as String,
      ipAddress: json['IpAddress'] as String,
      userAgent: json['UserAgent'] as String,
      skipResult: json['SkipResult'] as bool? ?? false,
      noBuyerFill: json['NoBuyerFill'] as bool? ?? false,
      fields: json['Fields'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$PlaceToPayModelToJson(PlaceToPayModel instance) =>
    <String, dynamic>{
      'Buyer': instance.buyer,
      'CancelUrl': instance.cancelUrl,
      'ClientId': instance.clientId,
      'Expiration': instance.expiration,
      'Fields': instance.fields,
      'IpAddress': instance.ipAddress,
      'Locale': instance.locale,
      'NoBuyerFill': instance.noBuyerFill,
      'Payer': instance.payer,
      'Payment': instance.payment,
      'PaymentMethod': instance.paymentMethod,
      'ReturnUrl': instance.returnUrl,
      'SkipResult': instance.skipResult,
      'Subscription': instance.subscription,
      'TransactionCode': instance.transactionCode,
      'UserAgent': instance.userAgent,
    };

Buyer _$BuyerFromJson(Map<String, dynamic> json) => Buyer(
      name: json['Name'] as String,
      email: json['Email'] as String,
      documentType: json['DocumentType'] as String? ?? '',
      cedula: json['Document'] as String,
      surname: json['Surname'] as String,
      company: json['Company'] as String? ?? '',
      address: Address.fromJson(json['Address'] as Map<String, dynamic>),
      mobile: json['Mobile'] as String,
    );

Map<String, dynamic> _$BuyerToJson(Buyer instance) => <String, dynamic>{
      'Address': instance.address,
      'Company': instance.company,
      'Document': instance.cedula,
      'DocumentType': instance.documentType,
      'Email': instance.email,
      'Mobile': instance.mobile,
      'Name': instance.name,
      'Surname': instance.surname,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      street: json['Street'] as String,
      city: json['City'] as String,
      estate: json['Estate'] as String,
      postalCode: json['PostalCode'] as String,
      country: json['Country'] as String,
      phone: json['Phone'],
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'City': instance.city,
      'Country': instance.country,
      'Estate': instance.estate,
      'Phone': instance.phone,
      'PostalCode': instance.postalCode,
      'Street': instance.street,
    };

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      serviceType: json['ServiceType'] as String,
      description: json['Description'] as String,
      amount: Amount.fromJson(json['Amount'] as Map<String, dynamic>),
      allowPartial: json['AllowPartial'] as bool? ?? false,
      shipping: Buyer.fromJson(json['Shipping'] as Map<String, dynamic>),
      items: json['Items'],
      processorFields: json['ProcessorFields'] as List<dynamic>? ?? const [],
      subscribe: json['Subscribe'] as bool? ?? false,
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'AllowPartial': instance.allowPartial,
      'Amount': instance.amount,
      'Description': instance.description,
      'Items': instance.items,
      'ProcessorFields': instance.processorFields,
      'ServiceType': instance.serviceType,
      'Shipping': instance.shipping,
      'Subscribe': instance.subscribe,
    };

Amount _$AmountFromJson(Map<String, dynamic> json) => Amount(
      taxes: (json['Taxes'] as List<dynamic>)
          .map((e) => Taxes.fromJson(e as Map<String, dynamic>))
          .toList(),
      details: json['Details'] as List<dynamic>? ?? const [],
      currency: json['Currency'] as String? ?? 'USD',
      total: (json['Total'] as num).toDouble(),
    );

Map<String, dynamic> _$AmountToJson(Amount instance) => <String, dynamic>{
      'Currency': instance.currency,
      'Details': instance.details,
      'Taxes': instance.taxes,
      'Total': instance.total,
    };

Taxes _$TaxesFromJson(Map<String, dynamic> json) => Taxes(
      kind: json['Kind'] as String? ?? 'valueAddedTax',
      iva: (json['Amount'] as num).toDouble(),
      productPrice: (json['Base'] as num).toDouble(),
    );

Map<String, dynamic> _$TaxesToJson(Taxes instance) => <String, dynamic>{
      'Amount': instance.iva,
      'Base': instance.productPrice,
      'Kind': instance.kind,
    };
