// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_settings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

extension GetIsarSettingsCollection on Isar {
  IsarCollection<IsarSettings> get isarSettingss {
    return getCollection('IsarSettings');
  }
}

final IsarSettingsSchema = CollectionSchema(
  name: 'IsarSettings',
  schema:
      '{"name":"IsarSettings","properties":[{"name":"enableChaptersBookmarksCount","type":"Byte"},{"name":"enableChaptersLikesCount","type":"Byte"},{"name":"enableChaptersViewsCount","type":"Byte"},{"name":"enableSeriesBookmarksCount","type":"Byte"},{"name":"enableSeriesLikesCount","type":"Byte"},{"name":"enableSeriesViewsCount","type":"Byte"},{"name":"uid","type":"String"},{"name":"stringify","type":"Byte"},{"name":"hashCode","type":"Long"}],"indexes":[{"name":"uid","unique":false,"properties":[{"name":"uid","type":"Hash","caseSensitive":true}]}],"links":[]}',
  adapter: const _IsarSettingsAdapter(),
  idName: 'id',
  propertyIds: {
    'enableChaptersBookmarksCount': 0,
    'enableChaptersLikesCount': 1,
    'enableChaptersViewsCount': 2,
    'enableSeriesBookmarksCount': 3,
    'enableSeriesLikesCount': 4,
    'enableSeriesViewsCount': 5,
    'uid': 6,
    'stringify': 7,
    'hashCode': 8
  },
  indexIds: {'uid': 0},
  indexTypes: {
    'uid': [
      NativeIndexType.stringHash,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) => obj.id,
  version: 0,
);

class _IsarSettingsAdapter extends IsarTypeAdapter<IsarSettings> {
  const _IsarSettingsAdapter();

  @override
  int serialize(IsarCollection<IsarSettings> collection, RawObject rawObj,
      IsarSettings object, List<int> offsets,
      [int? existingBufferSize]) {
    rawObj.id = object.id ?? Isar.minId;
    var dynamicSize = 0;
    final value0 = object.enableChaptersBookmarksCount;
    final _enableChaptersBookmarksCount = value0;
    final value1 = object.enableChaptersLikesCount;
    final _enableChaptersLikesCount = value1;
    final value2 = object.enableChaptersViewsCount;
    final _enableChaptersViewsCount = value2;
    final value3 = object.enableSeriesBookmarksCount;
    final _enableSeriesBookmarksCount = value3;
    final value4 = object.enableSeriesLikesCount;
    final _enableSeriesLikesCount = value4;
    final value5 = object.enableSeriesViewsCount;
    final _enableSeriesViewsCount = value5;
    final value6 = object.uid;
    final _uid = BinaryWriter.utf8Encoder.convert(value6);
    dynamicSize += _uid.length;
    final value7 = object.stringify;
    final _stringify = value7;
    final value8 = object.hashCode;
    final _hashCode = value8;
    final size = dynamicSize + 33;

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
    final writer = BinaryWriter(buffer, 33);
    writer.writeBool(offsets[0], _enableChaptersBookmarksCount);
    writer.writeBool(offsets[1], _enableChaptersLikesCount);
    writer.writeBool(offsets[2], _enableChaptersViewsCount);
    writer.writeBool(offsets[3], _enableSeriesBookmarksCount);
    writer.writeBool(offsets[4], _enableSeriesLikesCount);
    writer.writeBool(offsets[5], _enableSeriesViewsCount);
    writer.writeBytes(offsets[6], _uid);
    writer.writeBool(offsets[7], _stringify);
    writer.writeLong(offsets[8], _hashCode);
    return bufferSize;
  }

  @override
  IsarSettings deserialize(IsarCollection<IsarSettings> collection, int id,
      BinaryReader reader, List<int> offsets) {
    final object = IsarSettings(
      enableChaptersBookmarksCount: reader.readBoolOrNull(offsets[0]),
      enableChaptersLikesCount: reader.readBoolOrNull(offsets[1]),
      enableChaptersViewsCount: reader.readBoolOrNull(offsets[2]),
      enableSeriesBookmarksCount: reader.readBoolOrNull(offsets[3]),
      enableSeriesLikesCount: reader.readBoolOrNull(offsets[4]),
      enableSeriesViewsCount: reader.readBoolOrNull(offsets[5]),
      id: id,
      uid: reader.readString(offsets[6]),
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
        return (reader.readBoolOrNull(offset)) as P;
      case 1:
        return (reader.readBoolOrNull(offset)) as P;
      case 2:
        return (reader.readBoolOrNull(offset)) as P;
      case 3:
        return (reader.readBoolOrNull(offset)) as P;
      case 4:
        return (reader.readBoolOrNull(offset)) as P;
      case 5:
        return (reader.readBoolOrNull(offset)) as P;
      case 6:
        return (reader.readString(offset)) as P;
      case 7:
        return (reader.readBool(offset)) as P;
      case 8:
        return (reader.readLong(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension IsarSettingsQueryWhereSort
    on QueryBuilder<IsarSettings, IsarSettings, QWhere> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhere> anyId() {
    return addWhereClause(WhereClause(indexName: '_id'));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhere> anyUid() {
    return addWhereClause(WhereClause(indexName: 'uid'));
  }
}

extension IsarSettingsQueryWhere
    on QueryBuilder<IsarSettings, IsarSettings, QWhereClause> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idEqualTo(
      int? id) {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idNotEqualTo(
      int? id) {
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idIsNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      upper: [null],
      includeUpper: true,
      lower: [null],
      includeLower: true,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idIsNotNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> uidEqualTo(
      String uid) {
    return addWhereClause(WhereClause(
      indexName: 'uid',
      lower: [uid],
      includeLower: true,
      upper: [uid],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> uidNotEqualTo(
      String uid) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClause(WhereClause(
        indexName: 'uid',
        upper: [uid],
        includeUpper: false,
      )).addWhereClause(WhereClause(
        indexName: 'uid',
        lower: [uid],
        includeLower: false,
      ));
    } else {
      return addWhereClause(WhereClause(
        indexName: 'uid',
        lower: [uid],
        includeLower: false,
      )).addWhereClause(WhereClause(
        indexName: 'uid',
        upper: [uid],
        includeUpper: false,
      ));
    }
  }
}

extension IsarSettingsQueryFilter
    on QueryBuilder<IsarSettings, IsarSettings, QFilterCondition> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableChaptersBookmarksCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableChaptersBookmarksCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableChaptersBookmarksCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableChaptersBookmarksCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableChaptersLikesCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableChaptersLikesCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableChaptersLikesCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableChaptersLikesCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableChaptersViewsCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableChaptersViewsCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableChaptersViewsCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableChaptersViewsCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableSeriesBookmarksCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableSeriesBookmarksCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableSeriesBookmarksCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableSeriesBookmarksCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableSeriesLikesCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableSeriesLikesCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableSeriesLikesCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableSeriesLikesCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableSeriesViewsCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableSeriesViewsCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableSeriesViewsCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableSeriesViewsCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idEqualTo(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idGreaterThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idLessThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper,
  ) {
    return addFilterCondition(FilterCondition.between(
      property: 'id',
      lower: lower,
      upper: upper,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      uidGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition.between(
      property: 'uid',
      lower: lower,
      upper: upper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidStartsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.startsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidEndsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.endsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.contains,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.matches,
      property: 'uid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      stringifyEqualTo(
    bool value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeEqualTo(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeLessThan(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
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

extension IsarSettingsQueryWhereSortBy
    on QueryBuilder<IsarSettings, IsarSettings, QSortBy> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableChaptersBookmarksCount() {
    return addSortByInternal('enableChaptersBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableChaptersBookmarksCountDesc() {
    return addSortByInternal('enableChaptersBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableChaptersLikesCount() {
    return addSortByInternal('enableChaptersLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableChaptersLikesCountDesc() {
    return addSortByInternal('enableChaptersLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableChaptersViewsCount() {
    return addSortByInternal('enableChaptersViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableChaptersViewsCountDesc() {
    return addSortByInternal('enableChaptersViewsCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableSeriesBookmarksCount() {
    return addSortByInternal('enableSeriesBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableSeriesBookmarksCountDesc() {
    return addSortByInternal('enableSeriesBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableSeriesLikesCount() {
    return addSortByInternal('enableSeriesLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableSeriesLikesCountDesc() {
    return addSortByInternal('enableSeriesLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableSeriesViewsCount() {
    return addSortByInternal('enableSeriesViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableSeriesViewsCountDesc() {
    return addSortByInternal('enableSeriesViewsCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }
}

extension IsarSettingsQueryWhereSortThenBy
    on QueryBuilder<IsarSettings, IsarSettings, QSortThenBy> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableChaptersBookmarksCount() {
    return addSortByInternal('enableChaptersBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableChaptersBookmarksCountDesc() {
    return addSortByInternal('enableChaptersBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableChaptersLikesCount() {
    return addSortByInternal('enableChaptersLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableChaptersLikesCountDesc() {
    return addSortByInternal('enableChaptersLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableChaptersViewsCount() {
    return addSortByInternal('enableChaptersViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableChaptersViewsCountDesc() {
    return addSortByInternal('enableChaptersViewsCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableSeriesBookmarksCount() {
    return addSortByInternal('enableSeriesBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableSeriesBookmarksCountDesc() {
    return addSortByInternal('enableSeriesBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableSeriesLikesCount() {
    return addSortByInternal('enableSeriesLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableSeriesLikesCountDesc() {
    return addSortByInternal('enableSeriesLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableSeriesViewsCount() {
    return addSortByInternal('enableSeriesViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableSeriesViewsCountDesc() {
    return addSortByInternal('enableSeriesViewsCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }
}

extension IsarSettingsQueryWhereDistinct
    on QueryBuilder<IsarSettings, IsarSettings, QDistinct> {
  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableChaptersBookmarksCount() {
    return addDistinctByInternal('enableChaptersBookmarksCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableChaptersLikesCount() {
    return addDistinctByInternal('enableChaptersLikesCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableChaptersViewsCount() {
    return addDistinctByInternal('enableChaptersViewsCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableSeriesBookmarksCount() {
    return addDistinctByInternal('enableSeriesBookmarksCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableSeriesLikesCount() {
    return addDistinctByInternal('enableSeriesLikesCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableSeriesViewsCount() {
    return addDistinctByInternal('enableSeriesViewsCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uid', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }
}

extension IsarSettingsQueryProperty
    on QueryBuilder<IsarSettings, IsarSettings, QQueryProperty> {
  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableChaptersBookmarksCountProperty() {
    return addPropertyName('enableChaptersBookmarksCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableChaptersLikesCountProperty() {
    return addPropertyName('enableChaptersLikesCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableChaptersViewsCountProperty() {
    return addPropertyName('enableChaptersViewsCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableSeriesBookmarksCountProperty() {
    return addPropertyName('enableSeriesBookmarksCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableSeriesLikesCountProperty() {
    return addPropertyName('enableSeriesLikesCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableSeriesViewsCountProperty() {
    return addPropertyName('enableSeriesViewsCount');
  }

  QueryBuilder<IsarSettings, int?, QQueryOperations> idProperty() {
    return addPropertyName('id');
  }

  QueryBuilder<IsarSettings, String, QQueryOperations> uidProperty() {
    return addPropertyName('uid');
  }

  QueryBuilder<IsarSettings, bool, QQueryOperations> stringifyProperty() {
    return addPropertyName('stringify');
  }

  QueryBuilder<IsarSettings, int, QQueryOperations> hashCodeProperty() {
    return addPropertyName('hashCode');
  }
}
