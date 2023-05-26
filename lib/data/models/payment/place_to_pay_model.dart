// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:registro_civil_apk/core/const/const.dart';
import 'package:registro_civil_apk/data/enum/enums.dart';
part 'place_to_pay_model.g.dart';
part 'place_to_pay_model.freezed.dart';

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

  @override
  String toString() => toJson().toString();

  Map<String, dynamic> toJson() => _$PlaceToPayModelToJson(this);
}

@JsonSerializable()
class Buyer {
  Buyer({
    required this.name,
    required this.email,
    this.documentType = 'CI',
    required this.cedula,
    required this.surname,
    this.company = '',
    required this.address,
    required this.mobile,
  });

  factory Buyer.fromJson(Map<String, dynamic> json) => _$BuyerFromJson(json);

  @JsonKey(name: 'Address')
  Address address;

  @JsonKey(name: 'Document')
  String cedula;

  @JsonKey(name: 'Company')
  String company;

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

  @override
  String toString() => toJson().toString();

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

  @override
  String toString() => toJson().toString();

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

  @override
  String toString() => toJson().toString();

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

  @override
  String toString() => toJson().toString();

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

  @JsonKey(name: 'Kind')
  String kind;

  @JsonKey(name: 'Base')
  double productPrice;

  @override
  String toString() => toJson().toString();

  Map<String, dynamic> toJson() => _$TaxesToJson(this);
}

@freezed
@collectionOnFreezed
class PlaceToPayReferenceModel with _$PlaceToPayReferenceModel {
  const factory PlaceToPayReferenceModel({
    required String processUrl,
    required String paymentGatewayReference,
    required DateTime validTo,
    @JsonKey(
      includeFromJson: false,
      includeToJson: false,
    )
    @Enumerated(EnumType.name)
    ServiceType? serviceType,
    @JsonKey(name: 'Details') @ignore String? details,
    @JsonKey(name: 'Message') @ignore String? message,
    @JsonKey(name: 'Code') @ignore StatusCodeType? status,
    String? transactionCode,
    @ignore TransactionStatusType? transactionStatus,
  }) = _PlaceToPayReferenceModel;

  const PlaceToPayReferenceModel._();

  factory PlaceToPayReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceToPayReferenceModelFromJson(json);

  @JsonKey(
    includeFromJson: false,
    includeToJson: false,
  )
  Id get id => Isar.autoIncrement;

  @ignore
  bool get success =>
      status == StatusCodeType.s200 ||
      status == StatusCodeType.s201 ||
      status == StatusCodeType.s202 ||
      status == null;
}

@JsonSerializable()
class PlaceToPayTransactionDetailsModel {
  PlaceToPayTransactionDetailsModel({
    required this.civilRegistrationId,
    required this.channel,
    required this.transactionCode,
    required this.clientId,
    required this.reference,
    required this.internalReference,
    required this.reversedInternalReference,
    required this.requestId,
    required this.currentStatus,
    required this.expiration,
    required this.sendDate,
    required this.processUrl,
    required this.type,
    required this.processorFields,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    this.status,
  });

  factory PlaceToPayTransactionDetailsModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlaceToPayTransactionDetailsModelFromJson(json);

  final String channel;
  final String civilRegistrationId;
  final String clientId;
  final DateTime createdAt;
  final TransactionStatusType? currentStatus;
  final DateTime expiration;
  final String id;
  final int internalReference;
  final String processUrl;
  final List<dynamic> processorFields;
  final String reference;
  final int requestId;
  final int reversedInternalReference;
  final DateTime sendDate;
  @JsonKey(name: 'Code')
  final StatusCodeType? status;

  final String transactionCode;
  final String type;
  final DateTime updatedAt;

  @override
  String toString() => toJson().toString();

  bool get success =>
      status == StatusCodeType.s200 ||
      status == StatusCodeType.s201 ||
      status == StatusCodeType.s202 ||
      status == null;

  Map<String, dynamic> toJson() =>
      _$PlaceToPayTransactionDetailsModelToJson(this);
}
