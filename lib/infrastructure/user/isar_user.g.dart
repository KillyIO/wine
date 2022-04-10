// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetIsarUserCollection on Isar {
  IsarCollection<IsarUser> get users {
    return getCollection('IsarUser');
  }
}

final IsarUserSchema = CollectionSchema(
  name: 'IsarUser',
  schema:
      '{"name":"IsarUser","idName":"id","properties":[{"name":"emailAddress","type":"String"},{"name":"hashCode","type":"Long"},{"name":"stringify","type":"Bool"},{"name":"uid","type":"String"},{"name":"updatedAt","type":"Long"},{"name":"username","type":"String"}],"indexes":[{"name":"uid","unique":false,"properties":[{"name":"uid","type":"Hash","caseSensitive":true}]}],"links":[]}',
  nativeAdapter: const _IsarUserNativeAdapter(),
  webAdapter: const _IsarUserWebAdapter(),
  idName: 'id',
  propertyIds: {
    'emailAddress': 0,
    'hashCode': 1,
    'stringify': 2,
    'uid': 3,
    'updatedAt': 4,
    'username': 5
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

class _IsarUserWebAdapter extends IsarWebTypeAdapter<IsarUser> {
  const _IsarUserWebAdapter();

  @override
  Object serialize(IsarCollection<IsarUser> collection, IsarUser object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'emailAddress', object.emailAddress);
    IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'stringify', object.stringify);
    IsarNative.jsObjectSet(jsObj, 'uid', object.uid);
    IsarNative.jsObjectSet(
        jsObj, 'updatedAt', object.updatedAt.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'username', object.username);
    return jsObj;
  }

  @override
  IsarUser deserialize(IsarCollection<IsarUser> collection, dynamic jsObj) {
    final object = IsarUser(
      emailAddress: IsarNative.jsObjectGet(jsObj, 'emailAddress') ?? '',
      id: IsarNative.jsObjectGet(jsObj, 'id'),
      uid: IsarNative.jsObjectGet(jsObj, 'uid') ?? '',
      updatedAt: IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
      username: IsarNative.jsObjectGet(jsObj, 'username') ?? '',
    );
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'emailAddress':
        return (IsarNative.jsObjectGet(jsObj, 'emailAddress') ?? '') as P;
      case 'hashCode':
        return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
            double.negativeInfinity) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
      case 'stringify':
        return (IsarNative.jsObjectGet(jsObj, 'stringify') ?? false) as P;
      case 'uid':
        return (IsarNative.jsObjectGet(jsObj, 'uid') ?? '') as P;
      case 'updatedAt':
        return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'username':
        return (IsarNative.jsObjectGet(jsObj, 'username') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IsarUser object) {}
}

class _IsarUserNativeAdapter extends IsarNativeTypeAdapter<IsarUser> {
  const _IsarUserNativeAdapter();

  @override
  void serialize(IsarCollection<IsarUser> collection, IsarRawObject rawObj,
      IsarUser object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.emailAddress;
    final _emailAddress = IsarBinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += (_emailAddress.length) as int;
    final value1 = object.hashCode;
    final _hashCode = value1;
    final value2 = object.stringify;
    final _stringify = value2;
    final value3 = object.uid;
    final _uid = IsarBinaryWriter.utf8Encoder.convert(value3);
    dynamicSize += (_uid.length) as int;
    final value4 = object.updatedAt;
    final _updatedAt = value4;
    final value5 = object.username;
    final _username = IsarBinaryWriter.utf8Encoder.convert(value5);
    dynamicSize += (_username.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBytes(offsets[0], _emailAddress);
    writer.writeLong(offsets[1], _hashCode);
    writer.writeBool(offsets[2], _stringify);
    writer.writeBytes(offsets[3], _uid);
    writer.writeDateTime(offsets[4], _updatedAt);
    writer.writeBytes(offsets[5], _username);
  }

  @override
  IsarUser deserialize(IsarCollection<IsarUser> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = IsarUser(
      emailAddress: reader.readString(offsets[0]),
      id: id,
      uid: reader.readString(offsets[3]),
      updatedAt: reader.readDateTime(offsets[4]),
      username: reader.readString(offsets[5]),
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
        return (reader.readString(offset)) as P;
      case 1:
        return (reader.readLong(offset)) as P;
      case 2:
        return (reader.readBool(offset)) as P;
      case 3:
        return (reader.readString(offset)) as P;
      case 4:
        return (reader.readDateTime(offset)) as P;
      case 5:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, IsarUser object) {}
}

extension IsarUserQueryWhereSort on QueryBuilder<IsarUser, IsarUser, QWhere> {
  QueryBuilder<IsarUser, IsarUser, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhere> anyUid() {
    return addWhereClauseInternal(const WhereClause(indexName: 'uid'));
  }
}

extension IsarUserQueryWhere on QueryBuilder<IsarUser, IsarUser, QWhereClause> {
  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idNotEqualTo(int? id) {
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

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idGreaterThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idLessThan(
    int? id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idBetween(
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

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> uidEqualTo(String uid) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'uid',
      lower: [uid],
      includeLower: true,
      upper: [uid],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> uidNotEqualTo(
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

extension IsarUserQueryFilter
    on QueryBuilder<IsarUser, IsarUser, QFilterCondition> {
  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition>
      emailAddressGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'emailAddress',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition>
      emailAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'emailAddress',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeGreaterThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeLessThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeBetween(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> stringifyEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidEqualTo(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidGreaterThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidLessThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidBetween(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidStartsWith(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidEndsWith(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'username',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'username',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension IsarUserQueryLinks
    on QueryBuilder<IsarUser, IsarUser, QFilterCondition> {}

extension IsarUserQueryWhereSortBy
    on QueryBuilder<IsarUser, IsarUser, QSortBy> {
  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByEmailAddress() {
    return addSortByInternal('emailAddress', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByEmailAddressDesc() {
    return addSortByInternal('emailAddress', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }
}

extension IsarUserQueryWhereSortThenBy
    on QueryBuilder<IsarUser, IsarUser, QSortThenBy> {
  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByEmailAddress() {
    return addSortByInternal('emailAddress', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByEmailAddressDesc() {
    return addSortByInternal('emailAddress', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }
}

extension IsarUserQueryWhereDistinct
    on QueryBuilder<IsarUser, IsarUser, QDistinct> {
  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByEmailAddress(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('emailAddress', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uid', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('username', caseSensitive: caseSensitive);
  }
}

extension IsarUserQueryProperty
    on QueryBuilder<IsarUser, IsarUser, QQueryProperty> {
  QueryBuilder<IsarUser, String, QQueryOperations> emailAddressProperty() {
    return addPropertyNameInternal('emailAddress');
  }

  QueryBuilder<IsarUser, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<IsarUser, int?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<IsarUser, bool, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }

  QueryBuilder<IsarUser, String, QQueryOperations> uidProperty() {
    return addPropertyNameInternal('uid');
  }

  QueryBuilder<IsarUser, DateTime, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }

  QueryBuilder<IsarUser, String, QQueryOperations> usernameProperty() {
    return addPropertyNameInternal('username');
  }
}
