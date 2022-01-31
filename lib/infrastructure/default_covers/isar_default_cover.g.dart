// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_default_cover.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member

extension GetIsarDefaultCoverCollection on Isar {
  IsarCollection<IsarDefaultCover> get defaultCovers {
    return getCollection('IsarDefaultCover');
  }
}

final IsarDefaultCoverSchema = CollectionSchema(
  name: 'IsarDefaultCover',
  schema:
      '{"name":"IsarDefaultCover","properties":[{"name":"hashCode","type":"Long"},{"name":"key","type":"String"},{"name":"stringify","type":"Byte"},{"name":"url","type":"String"}],"indexes":[{"name":"key","unique":false,"properties":[{"name":"key","type":"Hash","caseSensitive":true}]}],"links":[]}',
  adapter: const _IsarDefaultCoverAdapter(),
  idName: 'id',
  propertyIds: {'hashCode': 0, 'key': 1, 'stringify': 2, 'url': 3},
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
  setId: null,
  getLinks: (obj) => [],
  version: 1,
);

class _IsarDefaultCoverAdapter extends IsarTypeAdapter<IsarDefaultCover> {
  const _IsarDefaultCoverAdapter();

  @override
  void serialize(
      IsarCollection<IsarDefaultCover> collection,
      IsarRawObject rawObj,
      IsarDefaultCover object,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.hashCode;
    final _hashCode = value0;
    final value1 = object.key;
    final _key = BinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += _key.length;
    final value2 = object.stringify;
    final _stringify = value2;
    final value3 = object.url;
    final _url = BinaryWriter.utf8Encoder.convert(value3);
    dynamicSize += _url.length;
    final size = dynamicSize + 27;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = bufAsBytes(rawObj.buffer, size);
    final writer = BinaryWriter(buffer, 27);
    writer.writeLong(offsets[0], _hashCode);
    writer.writeBytes(offsets[1], _key);
    writer.writeBool(offsets[2], _stringify);
    writer.writeBytes(offsets[3], _url);
  }

  @override
  IsarDefaultCover deserialize(IsarCollection<IsarDefaultCover> collection,
      int id, BinaryReader reader, List<int> offsets) {
    final object = IsarDefaultCover(
      id: id,
      key: reader.readString(offsets[1]),
      url: reader.readString(offsets[3]),
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
        return (reader.readLong(offset)) as P;
      case 1:
        return (reader.readString(offset)) as P;
      case 2:
        return (reader.readBool(offset)) as P;
      case 3:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension IsarDefaultCoverQueryWhereSort
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhere> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhere> anyKey() {
    return addWhereClauseInternal(const WhereClause(indexName: 'key'));
  }
}

extension IsarDefaultCoverQueryWhere
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhereClause> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause> idEqualTo(
      int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      idNotEqualTo(int? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause> idBetween(
    int? lowerId,
    int? upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      keyEqualTo(String key) {
    return addWhereClauseInternal(WhereClause(
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
      return addWhereClauseInternal(WhereClause(
        indexName: 'key',
        upper: [key],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'key',
        lower: [key],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'key',
        lower: [key],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
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
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
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
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
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
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'key',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'key',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'key',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      stringifyEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
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
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
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
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'url',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'url',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'url',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension IsarDefaultCoverQueryWhereSortBy
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QSortBy> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

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

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> sortByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      sortByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }
}

extension IsarDefaultCoverQueryWhereSortThenBy
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QSortThenBy> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

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

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy> thenByUrl() {
    return addSortByInternal('url', Sort.asc);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterSortBy>
      thenByUrlDesc() {
    return addSortByInternal('url', Sort.desc);
  }
}

extension IsarDefaultCoverQueryWhereDistinct
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> {
  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('key', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct>
      distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<IsarDefaultCover, IsarDefaultCover, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('url', caseSensitive: caseSensitive);
  }
}

extension IsarDefaultCoverQueryProperty
    on QueryBuilder<IsarDefaultCover, IsarDefaultCover, QQueryProperty> {
  QueryBuilder<IsarDefaultCover, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<IsarDefaultCover, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<IsarDefaultCover, String, QQueryOperations> keyProperty() {
    return addPropertyNameInternal('key');
  }

  QueryBuilder<IsarDefaultCover, bool, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }

  QueryBuilder<IsarDefaultCover, String, QQueryOperations> urlProperty() {
    return addPropertyNameInternal('url');
  }
}
