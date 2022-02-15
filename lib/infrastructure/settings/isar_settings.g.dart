// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_settings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetIsarSettingsCollection on Isar {
  IsarCollection<IsarSettings> get settings {
    return getCollection('IsarSettings');
  }
}

final IsarSettingsSchema = CollectionSchema(
  name: 'IsarSettings',
  schema:
      '{"name":"IsarSettings","idName":"id","properties":[{"name":"enableBranchesBookmarksCount","type":"Bool"},{"name":"enableBranchesLikesCount","type":"Bool"},{"name":"enableBranchesViewsCount","type":"Bool"},{"name":"enableTreesBookmarksCount","type":"Bool"},{"name":"enableTreesLikesCount","type":"Bool"},{"name":"enableTreesViewsCount","type":"Bool"},{"name":"hashCode","type":"Long"},{"name":"stringify","type":"Bool"},{"name":"uid","type":"String"}],"indexes":[{"name":"uid","unique":false,"properties":[{"name":"uid","type":"Hash","caseSensitive":true}]}],"links":[]}',
  nativeAdapter: const _IsarSettingsNativeAdapter(),
  webAdapter: const _IsarSettingsWebAdapter(),
  idName: 'id',
  propertyIds: {
    'enableBranchesBookmarksCount': 0,
    'enableBranchesLikesCount': 1,
    'enableBranchesViewsCount': 2,
    'enableTreesBookmarksCount': 3,
    'enableTreesLikesCount': 4,
    'enableTreesViewsCount': 5,
    'hashCode': 6,
    'stringify': 7,
    'uid': 8
  },
  listProperties: {},
  indexIds: {'uid': 0},
  indexTypes: {
    'uid': [
      NativeIndexType.stringHash,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: null,
  getLinks: (obj) => [],
  version: 2,
);

class _IsarSettingsWebAdapter extends IsarWebTypeAdapter<IsarSettings> {
  const _IsarSettingsWebAdapter();

  @override
  Object serialize(
      IsarCollection<IsarSettings> collection, IsarSettings object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'enableBranchesBookmarksCount',
        object.enableBranchesBookmarksCount);
    IsarNative.jsObjectSet(
        jsObj, 'enableBranchesLikesCount', object.enableBranchesLikesCount);
    IsarNative.jsObjectSet(
        jsObj, 'enableBranchesViewsCount', object.enableBranchesViewsCount);
    IsarNative.jsObjectSet(
        jsObj, 'enableTreesBookmarksCount', object.enableTreesBookmarksCount);
    IsarNative.jsObjectSet(
        jsObj, 'enableTreesLikesCount', object.enableTreesLikesCount);
    IsarNative.jsObjectSet(
        jsObj, 'enableTreesViewsCount', object.enableTreesViewsCount);
    IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'stringify', object.stringify);
    IsarNative.jsObjectSet(jsObj, 'uid', object.uid);
    return jsObj;
  }

  @override
  IsarSettings deserialize(
      IsarCollection<IsarSettings> collection, dynamic jsObj) {
    final object = IsarSettings(
      enableBranchesBookmarksCount:
          IsarNative.jsObjectGet(jsObj, 'enableBranchesBookmarksCount'),
      enableBranchesLikesCount:
          IsarNative.jsObjectGet(jsObj, 'enableBranchesLikesCount'),
      enableBranchesViewsCount:
          IsarNative.jsObjectGet(jsObj, 'enableBranchesViewsCount'),
      enableTreesBookmarksCount:
          IsarNative.jsObjectGet(jsObj, 'enableTreesBookmarksCount'),
      enableTreesLikesCount:
          IsarNative.jsObjectGet(jsObj, 'enableTreesLikesCount'),
      enableTreesViewsCount:
          IsarNative.jsObjectGet(jsObj, 'enableTreesViewsCount'),
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      uid: IsarNative.jsObjectGet(jsObj, 'uid') ?? '',
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'enableBranchesBookmarksCount':
        return (IsarNative.jsObjectGet(jsObj, 'enableBranchesBookmarksCount'))
            as P;
      case 'enableBranchesLikesCount':
        return (IsarNative.jsObjectGet(jsObj, 'enableBranchesLikesCount')) as P;
      case 'enableBranchesViewsCount':
        return (IsarNative.jsObjectGet(jsObj, 'enableBranchesViewsCount')) as P;
      case 'enableTreesBookmarksCount':
        return (IsarNative.jsObjectGet(jsObj, 'enableTreesBookmarksCount'))
            as P;
      case 'enableTreesLikesCount':
        return (IsarNative.jsObjectGet(jsObj, 'enableTreesLikesCount')) as P;
      case 'enableTreesViewsCount':
        return (IsarNative.jsObjectGet(jsObj, 'enableTreesViewsCount')) as P;
      case 'hashCode':
        return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
            double.negativeInfinity) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'stringify':
        return (IsarNative.jsObjectGet(jsObj, 'stringify') ?? false) as P;
      case 'uid':
        return (IsarNative.jsObjectGet(jsObj, 'uid') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IsarSettings object) {}
}

class _IsarSettingsNativeAdapter extends IsarNativeTypeAdapter<IsarSettings> {
  const _IsarSettingsNativeAdapter();

  @override
  void serialize(
      IsarCollection<IsarSettings> collection,
      IsarRawObject rawObj,
      IsarSettings object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
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
    final value6 = object.hashCode;
    final _hashCode = value6;
    final value7 = object.stringify;
    final _stringify = value7;
    final value8 = object.uid;
    final _uid = IsarBinaryWriter.utf8Encoder.convert(value8);
    dynamicSize += (_uid.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBool(offsets[0], _enableBranchesBookmarksCount);
    writer.writeBool(offsets[1], _enableBranchesLikesCount);
    writer.writeBool(offsets[2], _enableBranchesViewsCount);
    writer.writeBool(offsets[3], _enableTreesBookmarksCount);
    writer.writeBool(offsets[4], _enableTreesLikesCount);
    writer.writeBool(offsets[5], _enableTreesViewsCount);
    writer.writeLong(offsets[6], _hashCode);
    writer.writeBool(offsets[7], _stringify);
    writer.writeBytes(offsets[8], _uid);
  }

  @override
  IsarSettings deserialize(IsarCollection<IsarSettings> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = IsarSettings(
      enableBranchesBookmarksCount: reader.readBoolOrNull(offsets[0]),
      enableBranchesLikesCount: reader.readBoolOrNull(offsets[1]),
      enableBranchesViewsCount: reader.readBoolOrNull(offsets[2]),
      enableTreesBookmarksCount: reader.readBoolOrNull(offsets[3]),
      enableTreesLikesCount: reader.readBoolOrNull(offsets[4]),
      enableTreesViewsCount: reader.readBoolOrNull(offsets[5]),
      id: id,
      uid: reader.readString(offsets[8]),
    );
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
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
        return (reader.readLong(offset)) as P;
      case 7:
        return (reader.readBool(offset)) as P;
      case 8:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IsarSettings object) {}
}

extension IsarSettingsQueryWhereSort
    on QueryBuilder<IsarSettings, IsarSettings, QWhere> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhere> anyUid() {
    return addWhereClauseInternal(const WhereClause(indexName: 'uid'));
  }
}

extension IsarSettingsQueryWhere
    on QueryBuilder<IsarSettings, IsarSettings, QWhereClause> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idEqualTo(
      int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idNotEqualTo(
      int? id) {
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idBetween(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> uidEqualTo(
      String uid) {
    return addWhereClauseInternal(WhereClause(
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
      return addWhereClauseInternal(WhereClause(
        indexName: 'uid',
        upper: [uid],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'uid',
        lower: [uid],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'uid',
        lower: [uid],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
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
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableBranchesBookmarksCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesBookmarksCountEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enableBranchesBookmarksCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesLikesCountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableBranchesLikesCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesLikesCountEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enableBranchesLikesCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesViewsCountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableBranchesViewsCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesViewsCountEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enableBranchesViewsCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesBookmarksCountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableTreesBookmarksCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesBookmarksCountEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enableTreesBookmarksCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesLikesCountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableTreesLikesCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesLikesCountEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enableTreesLikesCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesViewsCountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'enableTreesViewsCount',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesViewsCountEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'enableTreesViewsCount',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      stringifyEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
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
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'uid',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uid',
      value: pattern,
      caseSensitive: caseSensitive,
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
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

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uid', caseSensitive: caseSensitive);
  }
}

extension IsarSettingsQueryProperty
    on QueryBuilder<IsarSettings, IsarSettings, QQueryProperty> {
  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesBookmarksCountProperty() {
    return addPropertyNameInternal('enableBranchesBookmarksCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesLikesCountProperty() {
    return addPropertyNameInternal('enableBranchesLikesCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesViewsCountProperty() {
    return addPropertyNameInternal('enableBranchesViewsCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesBookmarksCountProperty() {
    return addPropertyNameInternal('enableTreesBookmarksCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesLikesCountProperty() {
    return addPropertyNameInternal('enableTreesLikesCount');
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesViewsCountProperty() {
    return addPropertyNameInternal('enableTreesViewsCount');
  }

  QueryBuilder<IsarSettings, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<IsarSettings, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<IsarSettings, bool, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }

  QueryBuilder<IsarSettings, String, QQueryOperations> uidProperty() {
    return addPropertyNameInternal('uid');
  }
}
