// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetOffersModelCollection on Isar {
  IsarCollection<OffersModel> get offersModels => this.collection();
}

const OffersModelSchema = CollectionSchema(
  name: r'OffersModel',
  id: -3997999786850273560,
  properties: {
    r'cant': PropertySchema(
      id: 0,
      name: r'cant',
      type: IsarType.long,
    ),
    r'discountConadis': PropertySchema(
      id: 1,
      name: r'discountConadis',
      type: IsarType.bool,
    ),
    r'simpleCertificate': PropertySchema(
      id: 2,
      name: r'simpleCertificate',
      type: IsarType.byte,
      enumMap: _OffersModelsimpleCertificateEnumValueMap,
    )
  },
  estimateSize: _offersModelEstimateSize,
  serialize: _offersModelSerialize,
  deserialize: _offersModelDeserialize,
  deserializeProp: _offersModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _offersModelGetId,
  getLinks: _offersModelGetLinks,
  attach: _offersModelAttach,
  version: '3.0.5',
);

int _offersModelEstimateSize(
  OffersModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _offersModelSerialize(
  OffersModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cant);
  writer.writeBool(offsets[1], object.discountConadis);
  writer.writeByte(offsets[2], object.simpleCertificate.index);
}

OffersModel _offersModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OffersModel(
    cant: reader.readLongOrNull(offsets[0]) ?? 1,
    discountConadis: reader.readBoolOrNull(offsets[1]) ?? false,
    simpleCertificate: _OffersModelsimpleCertificateValueEnumMap[
            reader.readByteOrNull(offsets[2])] ??
        TypeSimpleCertificateEnum.birth,
  );
  object.id = id;
  return object;
}

P _offersModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset) ?? 1) as P;
    case 1:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 2:
      return (_OffersModelsimpleCertificateValueEnumMap[
              reader.readByteOrNull(offset)] ??
          TypeSimpleCertificateEnum.birth) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _OffersModelsimpleCertificateEnumValueMap = {
  'birth': 0,
  'marriage': 1,
  'factorUnion': 2,
  'death': 3,
  'gender': 4,
  'identity': 5,
  'copyMarriageRegistrationCertificate': 6,
  'copyRegistrationCertificateGenderRegistration': 7,
  'copyRegistrationRecordDeath': 8,
  'copyFactoUnionRegistrationCertificate': 9,
  'copyBirthRegistrationCertificate': 10,
};
const _OffersModelsimpleCertificateValueEnumMap = {
  0: TypeSimpleCertificateEnum.birth,
  1: TypeSimpleCertificateEnum.marriage,
  2: TypeSimpleCertificateEnum.factorUnion,
  3: TypeSimpleCertificateEnum.death,
  4: TypeSimpleCertificateEnum.gender,
  5: TypeSimpleCertificateEnum.identity,
  6: TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate,
  7: TypeSimpleCertificateEnum.copyRegistrationCertificateGenderRegistration,
  8: TypeSimpleCertificateEnum.copyRegistrationRecordDeath,
  9: TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate,
  10: TypeSimpleCertificateEnum.copyBirthRegistrationCertificate,
};

Id _offersModelGetId(OffersModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _offersModelGetLinks(OffersModel object) {
  return [];
}

void _offersModelAttach(
    IsarCollection<dynamic> col, Id id, OffersModel object) {
  object.id = id;
}

extension OffersModelQueryWhereSort
    on QueryBuilder<OffersModel, OffersModel, QWhere> {
  QueryBuilder<OffersModel, OffersModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OffersModelQueryWhere
    on QueryBuilder<OffersModel, OffersModel, QWhereClause> {
  QueryBuilder<OffersModel, OffersModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<OffersModel, OffersModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterWhereClause> idBetween(
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

extension OffersModelQueryFilter
    on QueryBuilder<OffersModel, OffersModel, QFilterCondition> {
  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> cantEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cant',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> cantGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cant',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> cantLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cant',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> cantBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cant',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition>
      discountConadisEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountConadis',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition>
      simpleCertificateEqualTo(TypeSimpleCertificateEnum value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'simpleCertificate',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition>
      simpleCertificateGreaterThan(
    TypeSimpleCertificateEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'simpleCertificate',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition>
      simpleCertificateLessThan(
    TypeSimpleCertificateEnum value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'simpleCertificate',
        value: value,
      ));
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterFilterCondition>
      simpleCertificateBetween(
    TypeSimpleCertificateEnum lower,
    TypeSimpleCertificateEnum upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'simpleCertificate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OffersModelQueryObject
    on QueryBuilder<OffersModel, OffersModel, QFilterCondition> {}

extension OffersModelQueryLinks
    on QueryBuilder<OffersModel, OffersModel, QFilterCondition> {}

extension OffersModelQuerySortBy
    on QueryBuilder<OffersModel, OffersModel, QSortBy> {
  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> sortByCant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cant', Sort.asc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> sortByCantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cant', Sort.desc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> sortByDiscountConadis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountConadis', Sort.asc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy>
      sortByDiscountConadisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountConadis', Sort.desc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy>
      sortBySimpleCertificate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simpleCertificate', Sort.asc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy>
      sortBySimpleCertificateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simpleCertificate', Sort.desc);
    });
  }
}

extension OffersModelQuerySortThenBy
    on QueryBuilder<OffersModel, OffersModel, QSortThenBy> {
  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> thenByCant() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cant', Sort.asc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> thenByCantDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cant', Sort.desc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> thenByDiscountConadis() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountConadis', Sort.asc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy>
      thenByDiscountConadisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountConadis', Sort.desc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy>
      thenBySimpleCertificate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simpleCertificate', Sort.asc);
    });
  }

  QueryBuilder<OffersModel, OffersModel, QAfterSortBy>
      thenBySimpleCertificateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'simpleCertificate', Sort.desc);
    });
  }
}

extension OffersModelQueryWhereDistinct
    on QueryBuilder<OffersModel, OffersModel, QDistinct> {
  QueryBuilder<OffersModel, OffersModel, QDistinct> distinctByCant() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cant');
    });
  }

  QueryBuilder<OffersModel, OffersModel, QDistinct>
      distinctByDiscountConadis() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountConadis');
    });
  }

  QueryBuilder<OffersModel, OffersModel, QDistinct>
      distinctBySimpleCertificate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'simpleCertificate');
    });
  }
}

extension OffersModelQueryProperty
    on QueryBuilder<OffersModel, OffersModel, QQueryProperty> {
  QueryBuilder<OffersModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OffersModel, int, QQueryOperations> cantProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cant');
    });
  }

  QueryBuilder<OffersModel, bool, QQueryOperations> discountConadisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountConadis');
    });
  }

  QueryBuilder<OffersModel, TypeSimpleCertificateEnum, QQueryOperations>
      simpleCertificateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'simpleCertificate');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OffersModel _$OffersModelFromJson(Map<String, dynamic> json) => OffersModel(
      simpleCertificate: $enumDecode(
          _$TypeSimpleCertificateEnumEnumMap, json['simpleCertificate']),
      cant: json['cant'] as int? ?? 1,
      discountConadis: json['discountConadis'] as bool? ?? false,
    )..id = json['id'] as int;

Map<String, dynamic> _$OffersModelToJson(OffersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'simpleCertificate':
          _$TypeSimpleCertificateEnumEnumMap[instance.simpleCertificate]!,
      'cant': instance.cant,
      'discountConadis': instance.discountConadis,
    };

const _$TypeSimpleCertificateEnumEnumMap = {
  TypeSimpleCertificateEnum.birth: 'SERVICE_CERTIFICADO_NACIMIENTO',
  TypeSimpleCertificateEnum.marriage: 'SERVICE_CERTIFICADO_MATRIMONIO',
  TypeSimpleCertificateEnum.factorUnion: 'SERVICE_CERTIFICADO_UNION_HECHO',
  TypeSimpleCertificateEnum.death: 'SERVICE_CERTIFICADO_DEFUNCION',
  TypeSimpleCertificateEnum.gender: 'SERVICE_CERTIFICADO_GENERO',
  TypeSimpleCertificateEnum.identity:
      'SERVICE_CERTIFICADO_IDENTIDAD_ESTADO_CIVIL',
  TypeSimpleCertificateEnum.copyMarriageRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_MATRIMONIO',
  TypeSimpleCertificateEnum.copyRegistrationCertificateGenderRegistration:
      'SERVICE_ACTA_REGISTRAL_GENERO',
  TypeSimpleCertificateEnum.copyRegistrationRecordDeath:
      'SERVICE_ACTA_REGISTRAL_DEFUNCION',
  TypeSimpleCertificateEnum.copyFactoUnionRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_UNION_HECHO',
  TypeSimpleCertificateEnum.copyBirthRegistrationCertificate:
      'SERVICE_ACTA_REGISTRAL_NACIMIENTO',
};
