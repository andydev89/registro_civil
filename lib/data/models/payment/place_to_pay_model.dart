import 'package:json_annotation/json_annotation.dart';
part 'place_to_pay_model.g.dart';

@JsonSerializable()
class PlaceToPayModel {
  PlaceToPayModel({
    required this.clientId,
    required this.transactionCode,
    required this.locale,
    required this.payer,
    required this.buyer,
    required this.payment,
    required this.subscription,
    required this.paymentMethod,
    required this.expiration,
    required this.returnUrl,
    required this.cancelUrl,
    required this.ipAddress,
    required this.userAgent,
    required this.skipResult,
    required this.noBuyerFill,
    required this.fields,
  });

  factory PlaceToPayModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceToPayModelFromJson(json);

  Buyer buyer;
  String cancelUrl;
  String clientId;
  String expiration;
  List<dynamic> fields;
  String ipAddress;
  String locale;
  bool noBuyerFill;
  dynamic payer;
  Payment payment;
  dynamic paymentMethod;
  String returnUrl;
  bool skipResult;
  dynamic subscription;
  String transactionCode;
  String userAgent;

  Map<String, dynamic> toJson() => _$PlaceToPayModelToJson(this);
}

@JsonSerializable()
class Buyer {
  Buyer({
    required this.name,
    required this.email,
    required this.documentType,
    required this.document,
    required this.surname,
    required this.company,
    required this.address,
    required this.mobile,
  });

  factory Buyer.fromJson(Map<String, dynamic> json) => _$BuyerFromJson(json);

  Address address;
  String company;
  String document;
  String documentType;
  String email;
  String mobile;
  String name;
  String surname;

  Map<String, dynamic> toJson() => _$BuyerToJson(this);
}

@JsonSerializable()
class Address {
  Address({
    required this.street,
    required this.city,
    required this.estate,
    required this.postalCode,
    required this.country,
    required this.phone,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  String city;
  String country;
  String estate;
  dynamic phone;
  String postalCode;
  String street;

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Payment {
  Payment({
    required this.reference,
    required this.description,
    required this.amount,
    required this.allowPartial,
    required this.shipping,
    required this.items,
    required this.processorFields,
    required this.subscribe,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  bool allowPartial;
  Amount amount;
  String description;
  dynamic items;
  List<dynamic> processorFields;
  String reference;
  Buyer shipping;
  bool subscribe;

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

@JsonSerializable()
class Amount {
  Amount({
    required this.taxes,
    required this.details,
    required this.currency,
    required this.total,
  });

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

  String currency;
  List<dynamic> details;
  List<Taxes> taxes;
  double total;

  Map<String, dynamic> toJson() => _$AmountToJson(this);
}

@JsonSerializable()
class Taxes {
  Taxes({
    required this.kind,
    required this.amount,
    required this.base,
  });

  factory Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);

  double amount;
  double base;
  String kind;

  Map<String, dynamic> toJson() => _$TaxesToJson(this);
}
