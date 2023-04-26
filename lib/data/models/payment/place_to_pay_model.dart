import 'package:json_annotation/json_annotation.dart';
part 'place_to_pay_model.g.dart';

@JsonSerializable()
class PlaceToPayModel {
  PlaceToPayModel({
    this.clientId = '2fe5364c-bdd7-4422-8fbe-ac67d8c83c99',
    this.transactionCode = 'RC-PAYMENT',
    this.locale = 'es_EC',
    this.payer,
    required this.buyer,
    required this.payment,
    this.subscription,
    this.paymentMethod,
    required this.expiration,
    required this.returnUrl,
    required this.cancelUrl,
    required this.ipAddress,
    required this.userAgent,
    this.skipResult = false,
    this.noBuyerFill = false,
    this.fields = const [],
  });

  factory PlaceToPayModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceToPayModelFromJson(json);

  @JsonKey(name: 'Buyer')
  Buyer buyer;
  @JsonKey(name: 'CancelUrl')
  String cancelUrl;
  @JsonKey(name: 'ClientId')
  String clientId;
  @JsonKey(name: 'Expiration')
  String expiration;
  @JsonKey(name: 'Fields')
  List<dynamic> fields;
  @JsonKey(name: 'IpAddress')
  String ipAddress;
  @JsonKey(name: 'Locale')
  String locale;
  @JsonKey(name: 'NoBuyerFill')
  bool noBuyerFill;
  @JsonKey(name: 'Payer')
  dynamic payer;
  @JsonKey(name: 'Payment')
  Payment payment;
  @JsonKey(name: 'PaymentMethod')
  dynamic paymentMethod;
  @JsonKey(name: 'ReturnUrl')
  String returnUrl;
  @JsonKey(name: 'SkipResult')
  bool skipResult;
  @JsonKey(name: 'Subscription')
  dynamic subscription;
  @JsonKey(name: 'TransactionCode')
  String transactionCode;
  @JsonKey(name: 'UserAgent')
  String userAgent;

  Map<String, dynamic> toJson() => _$PlaceToPayModelToJson(this);
}

@JsonSerializable()
class Buyer {
  Buyer({
    required this.name,
    required this.email,
    this.documentType = '',
    required this.cedula,
    required this.surname,
    this.company = '',
    required this.address,
    required this.mobile,
  });

  factory Buyer.fromJson(Map<String, dynamic> json) => _$BuyerFromJson(json);

  @JsonKey(name: 'Address')
  Address address;
  @JsonKey(name: 'Company')
  String company;
  @JsonKey(name: 'Document')
  String cedula;
  @JsonKey(name: 'DocumentType')
  String documentType;
  @JsonKey(name: 'Email')
  String email;
  @JsonKey(name: 'Mobile')
  String mobile;
  @JsonKey(name: 'Name')
  String name;
  @JsonKey(name: 'Surname')
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

  @JsonKey(name: 'City')
  String city;
  @JsonKey(name: 'Country')
  String country;
  @JsonKey(name: 'Estate')
  String estate;
  @JsonKey(name: 'Phone')
  dynamic phone;
  @JsonKey(name: 'PostalCode')
  String postalCode;
  @JsonKey(name: 'Street')
  String street;

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

@JsonSerializable()
class Payment {
  Payment({
    required this.serviceType,
    required this.description,
    required this.amount,
    this.allowPartial = false,
    required this.shipping,
    this.items,
    this.processorFields = const [],
    this.subscribe = false,
  });

  factory Payment.fromJson(Map<String, dynamic> json) =>
      _$PaymentFromJson(json);

  @JsonKey(name: 'AllowPartial')
  bool allowPartial;
  @JsonKey(name: 'Amount')
  Amount amount;
  @JsonKey(name: 'Description')
  String description;
  @JsonKey(name: 'Items')
  dynamic items;
  @JsonKey(name: 'ProcessorFields')
  List<dynamic> processorFields;

  ///Service type code (service type type)
  @JsonKey(name: 'ServiceType')
  String serviceType;
  @JsonKey(name: 'Shipping')
  Buyer shipping;
  @JsonKey(name: 'Subscribe')
  bool subscribe;

  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

@JsonSerializable()
class Amount {
  Amount({
    required this.taxes,
    this.details = const [],
    this.currency = 'USD',
    required this.total,
  });

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

  @JsonKey(name: 'Currency')
  String currency;
  @JsonKey(name: 'Details')
  List<dynamic> details;
  @JsonKey(name: 'Taxes')
  List<Taxes> taxes;

  ///total = (productPrice + iva) - descuento del producto
  @JsonKey(name: 'Total')
  double total;

  Map<String, dynamic> toJson() => _$AmountToJson(this);
}

@JsonSerializable()
class Taxes {
  Taxes({
    this.kind = 'valueAddedTax',
    required this.iva,
    required this.productPrice,
  });

  factory Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);

  @JsonKey(name: 'Amount')
  double iva;
  @JsonKey(name: 'Base')
  double productPrice;
  @JsonKey(name: 'Kind')
  String kind;

  Map<String, dynamic> toJson() => _$TaxesToJson(this);
}
