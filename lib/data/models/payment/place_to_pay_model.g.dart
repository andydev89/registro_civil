// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_to_pay_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPlaceToPayReferenceModelCollection on Isar {
  IsarCollection<PlaceToPayReferenceModel> get placeToPayReferenceModels =>
      this.collection();
}

const PlaceToPayReferenceModelSchema = CollectionSchema(
  name: r'PlaceToPayReferenceModel',
  id: 889140864630099791,
  properties: {
    r'paymentGatewayReference': PropertySchema(
      id: 0,
      name: r'paymentGatewayReference',
      type: IsarType.string,
    ),
    r'processUrl': PropertySchema(
      id: 1,
      name: r'processUrl',
      type: IsarType.string,
    ),
    r'serviceType': PropertySchema(
      id: 2,
      name: r'serviceType',
      type: IsarType.string,
      enumMap: _PlaceToPayReferenceModelserviceTypeEnumValueMap,
    ),
    r'transactionCode': PropertySchema(
      id: 3,
      name: r'transactionCode',
      type: IsarType.string,
    ),
    r'validTo': PropertySchema(
      id: 4,
      name: r'validTo',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _placeToPayReferenceModelEstimateSize,
  serialize: _placeToPayReferenceModelSerialize,
  deserialize: _placeToPayReferenceModelDeserialize,
  deserializeProp: _placeToPayReferenceModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _placeToPayReferenceModelGetId,
  getLinks: _placeToPayReferenceModelGetLinks,
  attach: _placeToPayReferenceModelAttach,
  version: '3.1.0+1',
);

int _placeToPayReferenceModelEstimateSize(
  PlaceToPayReferenceModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.paymentGatewayReference.length * 3;
  bytesCount += 3 + object.processUrl.length * 3;
  {
    final value = object.serviceType;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.transactionCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _placeToPayReferenceModelSerialize(
  PlaceToPayReferenceModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.paymentGatewayReference);
  writer.writeString(offsets[1], object.processUrl);
  writer.writeString(offsets[2], object.serviceType?.name);
  writer.writeString(offsets[3], object.transactionCode);
  writer.writeDateTime(offsets[4], object.validTo);
}

PlaceToPayReferenceModel _placeToPayReferenceModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PlaceToPayReferenceModel(
    paymentGatewayReference: reader.readString(offsets[0]),
    processUrl: reader.readString(offsets[1]),
    serviceType: _PlaceToPayReferenceModelserviceTypeValueEnumMap[
        reader.readStringOrNull(offsets[2])],
    transactionCode: reader.readStringOrNull(offsets[3]),
    validTo: reader.readDateTime(offsets[4]),
  );
  return object;
}

P _placeToPayReferenceModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (_PlaceToPayReferenceModelserviceTypeValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PlaceToPayReferenceModelserviceTypeEnumValueMap = {
  r'birth': r'birth',
  r'marriage': r'marriage',
  r'factorUnion': r'factorUnion',
  r'death': r'death',
  r'gender': r'gender',
  r'identity': r'identity',
  r'copyBirthRegistrationCertificate': r'copyBirthRegistrationCertificate',
  r'copyMarriageRegistrationCertificate':
      r'copyMarriageRegistrationCertificate',
  r'copyFactoUnionRegistrationCertificate':
      r'copyFactoUnionRegistrationCertificate',
  r'copyRegistrationRecordDeath': r'copyRegistrationRecordDeath',
  r'copyRegistrationCertificateGenderRegistration':
      r'copyRegistrationCertificateGenderRegistration',
  r'schedule': r'schedule',
  r'none': r'none',
  r'residencyRegistration': r'residencyRegistration',
  r'changeOfName': r'changeOfName',
  r'marriageCelebration': r'marriageCelebration',
};
const _PlaceToPayReferenceModelserviceTypeValueEnumMap = {
  r'birth': ServiceType.birth,
  r'marriage': ServiceType.marriage,
  r'factorUnion': ServiceType.factorUnion,
  r'death': ServiceType.death,
  r'gender': ServiceType.gender,
  r'identity': ServiceType.identity,
  r'copyBirthRegistrationCertificate':
      ServiceType.copyBirthRegistrationCertificate,
  r'copyMarriageRegistrationCertificate':
      ServiceType.copyMarriageRegistrationCertificate,
  r'copyFactoUnionRegistrationCertificate':
      ServiceType.copyFactoUnionRegistrationCertificate,
  r'copyRegistrationRecordDeath': ServiceType.copyRegistrationRecordDeath,
  r'copyRegistrationCertificateGenderRegistration':
      ServiceType.copyRegistrationCertificateGenderRegistration,
  r'schedule': ServiceType.schedule,
  r'none': ServiceType.none,
  r'residencyRegistration': ServiceType.residencyRegistration,
  r'changeOfName': ServiceType.changeOfName,
  r'marriageCelebration': ServiceType.marriageCelebration,
};

Id _placeToPayReferenceModelGetId(PlaceToPayReferenceModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _placeToPayReferenceModelGetLinks(
    PlaceToPayReferenceModel object) {
  return [];
}

void _placeToPayReferenceModelAttach(
    IsarCollection<dynamic> col, Id id, PlaceToPayReferenceModel object) {}

extension PlaceToPayReferenceModelQueryWhereSort on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QWhere> {
  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PlaceToPayReferenceModelQueryWhere on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QWhereClause> {
  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PlaceToPayReferenceModelQueryFilter on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QFilterCondition> {
  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentGatewayReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentGatewayReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentGatewayReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentGatewayReference',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentGatewayReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentGatewayReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      paymentGatewayReferenceContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentGatewayReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      paymentGatewayReferenceMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentGatewayReference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentGatewayReference',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> paymentGatewayReferenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentGatewayReference',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'processUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'processUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'processUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'processUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'processUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'processUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      processUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'processUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      processUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'processUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'processUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> processUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'processUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serviceType',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serviceType',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeEqualTo(
    ServiceType? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeGreaterThan(
    ServiceType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeLessThan(
    ServiceType? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeBetween(
    ServiceType? lower,
    ServiceType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serviceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serviceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      serviceTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serviceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      serviceTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serviceType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceType',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> serviceTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serviceType',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transactionCode',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transactionCode',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transactionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transactionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transactionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transactionCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transactionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transactionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      transactionCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transactionCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
          QAfterFilterCondition>
      transactionCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transactionCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transactionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> transactionCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transactionCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> validToEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validTo',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> validToGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'validTo',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> validToLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'validTo',
        value: value,
      ));
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel,
      QAfterFilterCondition> validToBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'validTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PlaceToPayReferenceModelQueryObject on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QFilterCondition> {}

extension PlaceToPayReferenceModelQueryLinks on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QFilterCondition> {}

extension PlaceToPayReferenceModelQuerySortBy on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QSortBy> {
  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByPaymentGatewayReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentGatewayReference', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByPaymentGatewayReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentGatewayReference', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByProcessUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processUrl', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByProcessUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processUrl', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByServiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByServiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByTransactionCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionCode', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByTransactionCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionCode', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByValidTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTo', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      sortByValidToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTo', Sort.desc);
    });
  }
}

extension PlaceToPayReferenceModelQuerySortThenBy on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QSortThenBy> {
  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByPaymentGatewayReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentGatewayReference', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByPaymentGatewayReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentGatewayReference', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByProcessUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processUrl', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByProcessUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processUrl', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByServiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByServiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByTransactionCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionCode', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByTransactionCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transactionCode', Sort.desc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByValidTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTo', Sort.asc);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QAfterSortBy>
      thenByValidToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validTo', Sort.desc);
    });
  }
}

extension PlaceToPayReferenceModelQueryWhereDistinct on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QDistinct> {
  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QDistinct>
      distinctByPaymentGatewayReference({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentGatewayReference',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QDistinct>
      distinctByProcessUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'processUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QDistinct>
      distinctByServiceType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QDistinct>
      distinctByTransactionCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transactionCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, PlaceToPayReferenceModel, QDistinct>
      distinctByValidTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validTo');
    });
  }
}

extension PlaceToPayReferenceModelQueryProperty on QueryBuilder<
    PlaceToPayReferenceModel, PlaceToPayReferenceModel, QQueryProperty> {
  QueryBuilder<PlaceToPayReferenceModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, String, QQueryOperations>
      paymentGatewayReferenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentGatewayReference');
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, String, QQueryOperations>
      processUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'processUrl');
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, ServiceType?, QQueryOperations>
      serviceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceType');
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, String?, QQueryOperations>
      transactionCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transactionCode');
    });
  }

  QueryBuilder<PlaceToPayReferenceModel, DateTime, QQueryOperations>
      validToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validTo');
    });
  }
}

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
      documentType: json['DocumentType'] as String? ?? 'CI',
      cedula: json['Document'] as String,
      surname: json['Surname'] as String,
      company: json['Company'] as String? ?? '',
      address: Address.fromJson(json['Address'] as Map<String, dynamic>),
      mobile: json['Mobile'] as String,
    );

Map<String, dynamic> _$BuyerToJson(Buyer instance) => <String, dynamic>{
      'Address': instance.address,
      'Document': instance.cedula,
      'Company': instance.company,
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
      'Kind': instance.kind,
      'Base': instance.productPrice,
    };

PlaceToPayTransactionDetailsModel _$PlaceToPayTransactionDetailsModelFromJson(
        Map<String, dynamic> json) =>
    PlaceToPayTransactionDetailsModel(
      civilRegistrationId: json['civilRegistrationId'] as String,
      channel: json['channel'] as String,
      transactionCode: json['transactionCode'] as String,
      clientId: json['clientId'] as String,
      reference: json['reference'] as String,
      internalReference: json['internalReference'] as int,
      reversedInternalReference: json['reversedInternalReference'] as int,
      requestId: json['requestId'] as int,
      currentStatus: $enumDecodeNullable(
          _$TransactionStatusTypeEnumMap, json['currentStatus']),
      expiration: DateTime.parse(json['expiration'] as String),
      sendDate: DateTime.parse(json['sendDate'] as String),
      processUrl: json['processUrl'] as String,
      type: json['type'] as String,
      processorFields: json['processorFields'] as List<dynamic>,
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      status: $enumDecodeNullable(_$StatusCodeTypeEnumMap, json['Code']),
    );

Map<String, dynamic> _$PlaceToPayTransactionDetailsModelToJson(
        PlaceToPayTransactionDetailsModel instance) =>
    <String, dynamic>{
      'channel': instance.channel,
      'civilRegistrationId': instance.civilRegistrationId,
      'clientId': instance.clientId,
      'createdAt': instance.createdAt.toIso8601String(),
      'currentStatus': _$TransactionStatusTypeEnumMap[instance.currentStatus],
      'expiration': instance.expiration.toIso8601String(),
      'id': instance.id,
      'internalReference': instance.internalReference,
      'processUrl': instance.processUrl,
      'processorFields': instance.processorFields,
      'reference': instance.reference,
      'requestId': instance.requestId,
      'reversedInternalReference': instance.reversedInternalReference,
      'sendDate': instance.sendDate.toIso8601String(),
      'Code': _$StatusCodeTypeEnumMap[instance.status],
      'transactionCode': instance.transactionCode,
      'type': instance.type,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$TransactionStatusTypeEnumMap = {
  TransactionStatusType.pending: 'PENDING',
  TransactionStatusType.approved: 'APPROVED',
  TransactionStatusType.failed: 'FAILED',
  TransactionStatusType.cancelled: 'CANCELLED',
  TransactionStatusType.rejected: 'REJECTED',
};

const _$StatusCodeTypeEnumMap = {
  StatusCodeType.s200: 200,
  StatusCodeType.s201: 201,
  StatusCodeType.s202: 202,
  StatusCodeType.s400: 400,
  StatusCodeType.s401: 401,
  StatusCodeType.s403: 403,
  StatusCodeType.s404: 404,
  StatusCodeType.s405: 405,
  StatusCodeType.s406: 406,
  StatusCodeType.s408: 408,
  StatusCodeType.s409: 409,
  StatusCodeType.s412: 412,
  StatusCodeType.s500: 500,
  StatusCodeType.s501: 501,
  StatusCodeType.s502: 502,
  StatusCodeType.s503: 503,
  StatusCodeType.s504: 504,
  StatusCodeType.s999: 999,
  StatusCodeType.s601: 601,
  StatusCodeType.s602: 602,
  StatusCodeType.s603: 603,
  StatusCodeType.s604: 604,
  StatusCodeType.s605: 605,
  StatusCodeType.s606: 606,
  StatusCodeType.s607: 607,
  StatusCodeType.s608: 608,
  StatusCodeType.s609: 609,
  StatusCodeType.s610: 610,
  StatusCodeType.s611: 611,
  StatusCodeType.s612: 612,
  StatusCodeType.s613: 613,
  StatusCodeType.s614: 614,
  StatusCodeType.s615: 615,
  StatusCodeType.s616: 616,
  StatusCodeType.s617: 617,
  StatusCodeType.s618: 618,
  StatusCodeType.s619: 619,
  StatusCodeType.s620: 620,
  StatusCodeType.s621: 621,
  StatusCodeType.s622: 622,
  StatusCodeType.s623: 623,
  StatusCodeType.s624: 624,
  StatusCodeType.s625: 625,
  StatusCodeType.s626: 626,
  StatusCodeType.s627: 627,
  StatusCodeType.s628: 628,
  StatusCodeType.s629: 629,
  StatusCodeType.s630: 630,
  StatusCodeType.s631: 631,
  StatusCodeType.s632: 632,
  StatusCodeType.s633: 633,
  StatusCodeType.s634: 634,
  StatusCodeType.s635: 635,
  StatusCodeType.s636: 636,
  StatusCodeType.s637: 637,
  StatusCodeType.s638: 638,
  StatusCodeType.s639: 639,
  StatusCodeType.s640: 640,
  StatusCodeType.s641: 641,
  StatusCodeType.s642: 642,
  StatusCodeType.s643: 643,
  StatusCodeType.s644: 644,
  StatusCodeType.s680: 680,
  StatusCodeType.s681: 681,
  StatusCodeType.s682: 682,
  StatusCodeType.s683: 683,
  StatusCodeType.s684: 684,
  StatusCodeType.s685: 685,
  StatusCodeType.s686: 686,
  StatusCodeType.s687: 687,
};

_$_PlaceToPayReferenceModel _$$_PlaceToPayReferenceModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlaceToPayReferenceModel(
      processUrl: json['processUrl'] as String,
      paymentGatewayReference: json['paymentGatewayReference'] as String,
      validTo: DateTime.parse(json['validTo'] as String),
      details: json['Details'] as String?,
      message: json['Message'] as String?,
      status: $enumDecodeNullable(_$StatusCodeTypeEnumMap, json['Code']),
      transactionCode: json['transactionCode'] as String?,
    );

Map<String, dynamic> _$$_PlaceToPayReferenceModelToJson(
        _$_PlaceToPayReferenceModel instance) =>
    <String, dynamic>{
      'processUrl': instance.processUrl,
      'paymentGatewayReference': instance.paymentGatewayReference,
      'validTo': instance.validTo.toIso8601String(),
      'Details': instance.details,
      'Message': instance.message,
      'Code': _$StatusCodeTypeEnumMap[instance.status],
      'transactionCode': instance.transactionCode,
    };
