// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_default_cover.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

extension GetIsarDefaultCoverCollection on Isar {
  IsarCollection<IsarDefaultCover> get isarDefaultCovers {
    return getCollection('IsarDefaultCover');
  }
}

final IsarDefaultCoverSchema = CollectionSchema(
  name: 'IsarDefaultCover',
  schema:
      '{"name":"IsarDefaultCover","properties":[{"name":"key","type":"String"},{"name":"url","type":"String"},{"name":"stringify","type":"Byte"},{"name":"hashCode","type":"Long"}],"indexes":[{"name":"key","unique":false,"properties":[{"name":"key","type":"Hash","caseSensitive":true}]}],"links":[]}',
  adapter: const _IsarDefaultCoverAdapter(),
  idName: 'id',
  propertyIds: {'key': 0, 'url': 1, 'stringify': 2, 'hashCode': 3},
  indexIds: {'key': 0},
  indexTypes: {
    'key': [
      NativeIndexType.stringHash,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) => obj.id,
  version: 0,
);

class _IsarDefaultCoverAdapter extends IsarTypeAdapter<IsarDefaultCover> {
  const _IsarDefaultCoverAdapter();

  @override
  int serialize(IsarCollection<IsarDefaultCover> collection, RawObject rawObj,
      IsarDefaultCover object, List<int> offsets,
      [int? existingBufferSize]) {
    rawObj.id = object.id ?? Isar.minId;
    var dynamicSize = 0;
    final value0 = object.key;
    final _key = BinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += _key.length;
    final value1 = object.url;
    final _url = BinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += _url.length;
    final value2 = object.stringify;
    final _stringify = value2;
    final value3 = object.hashCode;
    final _hashCode = value3;
    final size = dynamicSize + 35;

    late int bufferSize;
    if (existingBufferSize != null) {
      if (existingBufferSize < size) {
        malloc.free(rawObj.buffer);
        rawObj.buffer = malloc(size);
        bufferSize = size;
      } else {
        bufferSize = existingBufferSize;
      }
    } else {
      rawObj.buffer = malloc(size);
      bufferSize = size;
    }
    rawObj.buffer_length = size;
    final buffer = rawObj.buffer.asTypedList(size);
    final writer = BinaryWriter(buffer, 35);
    writer.writeBytes(offsets[0], _key);
    writer.writeBytes(offsets[1], _url);
    writer.writeBool(offsets[2], _stringify);
    writer.writeLong(offsets[3], _hashCode);
    return bufferSize;
  }

  @override
  IsarDefaultCover deserialize(IsarCollection<IsarDefaultCover> collection,
      int id, BinaryReader reader, List<int> offsets) {
    final object = IsarDefaultCover(
      id: id,
      key: reader.readString(offsets[0]),
      url: reader.readString(offsets[1]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, BinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readBool(offset)) as P;
      case 3:
        return (reader.readLong(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension IsarDefaultCoverQueryWhereSort
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhere> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhere> anyId() {
    return addWhereClause(WhereClause(indexName: '_id'));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhere> anyKey() {
    return addWhereClause(WhereClause(indexName: 'key'));
  }
}

extension IsarDefaultCoverQueryWhere
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhereClause> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause> idEqualTo(
      int? id) {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClause(WhereClause(
        indexName: '_id',
        upper: [id],
        includeUpper: false,
      )).addWhereClause(WhereClause(
        indexName: '_id',
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClause(WhereClause(
        indexName: '_id',
        lower: [id],
        includeLower: false,
      )).addWhereClause(WhereClause(
        indexName: '_id',
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      idIsNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      upper: [null],
      includeUpper: true,
      lower: [null],
      includeLower: true,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      idIsNotNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      keyEqualTo(String key) {
    return addWhereClause(WhereClause(
      indexName: 'key',
      lower: [key],
      includeLower: true,
      upper: [key],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      keyNotEqualTo(String key) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClause(WhereClause(
        indexName: 'key',
        upper: [key],
        includeUpper: false,
      )).addWhereClause(WhereClause(
        indexName: 'key',
        lower: [key],
        includeLower: false,
      ));
    } else {
      return addWhereClause(WhereClause(
        indexName: 'key',
        lower: [key],
        includeLower: false,
      )).addWhereClause(WhereClause(
        indexName: 'key',
        upper: [key],
        includeUpper: false,
      ));
    }
  }
}

extension IsarDefaultCoverQueryFilter
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QFilterCondition> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idEqualTo(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idGreaterThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idLessThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idBetween(
    int? lower,
    int? upper,
  ) {
    return addFilterCondition(FilterCondition.between(
      property: 'id',
      lower: lower,
      upper: upper,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition.between(
      property: 'key',
      lower: lower,
      upper: upper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyStartsWith(String value, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.startsWith,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyEndsWith(String value, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.endsWith,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.contains,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.matches,
      property: 'key',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition.between(
      property: 'url',
      lower: lower,
      upper: upper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlStartsWith(String value, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.startsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlEndsWith(String value, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.endsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.contains,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.matches,
      property: 'url',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      stringifyEqualTo(
    bool value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      hashCodeEqualTo(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      hashCodeLessThan(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper,
  ) {
    return addFilterCondition(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      upper: upper,
    ));
  }
}

extension IsarDefaultCoverQueryWhereSortBy
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QSortBy> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> sortByKey() {
    return addSortByInternal('key', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByKeyDesc() {
    return addSortByInternal('key', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> sortByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }
}

extension IsarDefaultCoverQueryWhereSortThenBy
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QSortThenBy> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> thenByKey() {
    return addSortByInternal('key', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByKeyDesc() {
    return addSortByInternal('key', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> thenByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }
}

extension IsarDefaultCoverQueryWhereDistinct
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('key', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('url', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct>
      distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }
}

extension IsarDefaultCoverQueryProperty
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QQueryProperty> {
  QueryBuilder<IsarDefaultCover, int?, QQueryOperations> idProperty() {
    return addPropertyName('id');
  }

  QueryBuilder<IsarDefaultCover, String, QQueryOperations> keyProperty() {
    return addPropertyName('key');
  }

  QueryBuilder<IsarDefaultCover, String, QQueryOperations> urlProperty() {
    return addPropertyName('url');
  }

  QueryBuilder<IsarDefaultCover, bool, QQueryOperations> stringifyProperty() {
    return addPropertyName('stringify');
  }

  QueryBuilder<IsarDefaultCover, int, QQueryOperations> hashCodeProperty() {
    return addPropertyName('hashCode');
  }
}
