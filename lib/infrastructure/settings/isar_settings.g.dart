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
      '{"name":"IsarSettings","properties":[{"name":"enableBranchesBookmarksCount","type":"Byte"},{"name":"enableBranchesLikesCount","type":"Byte"},{"name":"enableBranchesViewsCount","type":"Byte"},{"name":"enableTreesBookmarksCount","type":"Byte"},{"name":"enableTreesLikesCount","type":"Byte"},{"name":"enableTreesViewsCount","type":"Byte"},{"name":"uid","type":"String"},{"name":"stringify","type":"Byte"},{"name":"hashCode","type":"Long"}],"indexes":[{"name":"uid","unique":false,"properties":[{"name":"uid","type":"Hash","caseSensitive":true}]}],"links":[]}',
  adapter: const _IsarSettingsAdapter(),
  idName: 'id',
  propertyIds: {
    'enableBranchesBookmarksCount': 0,
    'enableBranchesLikesCount': 1,
    'enableBranchesViewsCount': 2,
    'enableTreesBookmarksCount': 3,
    'enableTreesLikesCount': 4,
    'enableTreesViewsCount': 5,
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
    final value0 = object.enableBranchesBookmarksCount;
    final _enableBranchesBookmarksCount = value0;
    final value1 = object.enableBranchesLikesCount;
    final _enableBranchesLikesCount = value1;
    final value2 = object.enableBranchesViewsCount;
    final _enableBranchesViewsCount = value2;
    final value3 = object.enableTreesBookmarksCount;
    final _enableTreesBookmarksCount = value3;
    final value4 = object.enableTreesLikesCount;
    final _enableTreesLikesCount = value4;
    final value5 = object.enableTreesViewsCount;
    final _enableTreesViewsCount = value5;
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
    writer.writeBool(offsets[0], _enableBranchesBookmarksCount);
    writer.writeBool(offsets[1], _enableBranchesLikesCount);
    writer.writeBool(offsets[2], _enableBranchesViewsCount);
    writer.writeBool(offsets[3], _enableTreesBookmarksCount);
    writer.writeBool(offsets[4], _enableTreesLikesCount);
    writer.writeBool(offsets[5], _enableTreesViewsCount);
    writer.writeBytes(offsets[6], _uid);
    writer.writeBool(offsets[7], _stringify);
    writer.writeLong(offsets[8], _hashCode);
    return bufferSize;
  }

  @override
  IsarSettings deserialize(IsarCollection<IsarSettings> collection, int id,
      BinaryReader reader, List<int> offsets) {
    final object = IsarSettings(
      enableBranchesBookmarksCount: reader.readBoolOrNull(offsets[0]),
      enableBranchesLikesCount: reader.readBoolOrNull(offsets[1]),
      enableBranchesViewsCount: reader.readBoolOrNull(offsets[2]),
      enableTreesBookmarksCount: reader.readBoolOrNull(offsets[3]),
      enableTreesLikesCount: reader.readBoolOrNull(offsets[4]),
      enableTreesViewsCount: reader.readBoolOrNull(offsets[5]),
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
      enableBranchesBookmarksCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableBranchesBookmarksCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesBookmarksCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableBranchesBookmarksCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesLikesCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableBranchesLikesCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesLikesCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableBranchesLikesCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesViewsCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableBranchesViewsCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesViewsCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableBranchesViewsCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesBookmarksCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableTreesBookmarksCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesBookmarksCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableTreesBookmarksCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesLikesCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableTreesLikesCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesLikesCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableTreesLikesCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesViewsCountIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableTreesViewsCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesViewsCountEqualTo(
    bool? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'enableTreesViewsCount',
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
      sortByEnableBranchesBookmarksCount() {
    return addSortByInternal('enableBranchesBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesBookmarksCountDesc() {
    return addSortByInternal('enableBranchesBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesLikesCount() {
    return addSortByInternal('enableBranchesLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesLikesCountDesc() {
    return addSortByInternal('enableBranchesLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesViewsCount() {
    return addSortByInternal('enableBranchesViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesViewsCountDesc() {
    return addSortByInternal('enableBranchesViewsCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesBookmarksCount() {
    return addSortByInternal('enableTreesBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesBookmarksCountDesc() {
    return addSortByInternal('enableTreesBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesLikesCount() {
    return addSortByInternal('enableTreesLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesLikesCountDesc() {
    return addSortByInternal('enableTreesLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesViewsCount() {
    return addSortByInternal('enableTreesViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesViewsCountDesc() {
    return addSortByInternal('enableTreesViewsCount', Sort.desc);
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
      thenByEnableBranchesBookmarksCount() {
    return addSortByInternal('enableBranchesBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesBookmarksCountDesc() {
    return addSortByInternal('enableBranchesBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesLikesCount() {
    return addSortByInternal('enableBranchesLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesLikesCountDesc() {
    return addSortByInternal('enableBranchesLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesViewsCount() {
    return addSortByInternal('enableBranchesViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesViewsCountDesc() {
    return addSortByInternal('enableBranchesViewsCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesBookmarksCount() {
    return addSortByInternal('enableTreesBookmarksCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesBookmarksCountDesc() {
    return addSortByInternal('enableTreesBookmarksCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesLikesCount() {
    return addSortByInternal('enableTreesLikesCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesLikesCountDesc() {
    return addSortByInternal('enableTreesLikesCount', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesViewsCount() {
    return addSortByInternal('enableTreesViewsCount', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesViewsCountDesc() {
    return addSortByInternal('enableTreesViewsCount', Sort.desc);
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
      distinctByEnableBranchesBookmarksCount() {
    return addDistinctByInternal('enableBranchesBookmarksCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableBranchesLikesCount() {
    return addDistinctByInternal('enableBranchesLikesCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableBranchesViewsCount() {
    return addDistinctByInternal('enableBranchesViewsCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableTreesBookmarksCount() {
    return addDistinctByInternal('enableTreesBookmarksCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableTreesLikesCount() {
    return addDistinctByInternal('enableTreesLikesCount');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableTreesViewsCount() {
    return addDistinctByInternal('enableTreesViewsCount');
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
      enableBranchesBookmarksCountProperty() {
    return addPropertyName('enableBranchesBookmarksCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesLikesCountProperty() {
    return addPropertyName('enableBranchesLikesCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesViewsCountProperty() {
    return addPropertyName('enableBranchesViewsCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesBookmarksCountProperty() {
    return addPropertyName('enableTreesBookmarksCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesLikesCountProperty() {
    return addPropertyName('enableTreesLikesCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesViewsCountProperty() {
    return addPropertyName('enableTreesViewsCount');
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
