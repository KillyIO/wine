// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, invalid_use_of_protected_member

extension GetIsarUserCollection on Isar {
  IsarCollection<IsarUser> get isarUsers {
    return getCollection('IsarUser');
  }
}

final IsarUserSchema = CollectionSchema(
  name: 'IsarUser',
  schema:
      '{"name":"IsarUser","properties":[{"name":"emailAddress","type":"String"},{"name":"uid","type":"String"},{"name":"username","type":"String"},{"name":"stringify","type":"Byte"},{"name":"hashCode","type":"Long"}],"indexes":[{"name":"uid","unique":false,"properties":[{"name":"uid","type":"Hash","caseSensitive":true}]}],"links":[]}',
  adapter: const _IsarUserAdapter(),
  idName: 'id',
  propertyIds: {
    'emailAddress': 0,
    'uid': 1,
    'username': 2,
    'stringify': 3,
    'hashCode': 4
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

class _IsarUserAdapter extends IsarTypeAdapter<IsarUser> {
  const _IsarUserAdapter();

  @override
  int serialize(IsarCollection<IsarUser> collection, RawObject rawObj,
      IsarUser object, List<int> offsets,
      [int? existingBufferSize]) {
    rawObj.id = object.id ?? Isar.minId;
    var dynamicSize = 0;
    final value0 = object.emailAddress;
    final _emailAddress = BinaryWriter.utf8Encoder.convert(value0);
    dynamicSize += _emailAddress.length;
    final value1 = object.uid;
    final _uid = BinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += _uid.length;
    final value2 = object.username;
    final _username = BinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += _username.length;
    final value3 = object.stringify;
    final _stringify = value3;
    final value4 = object.hashCode;
    final _hashCode = value4;
    final size = dynamicSize + 43;

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
    final writer = BinaryWriter(buffer, 43);
    writer.writeBytes(offsets[0], _emailAddress);
    writer.writeBytes(offsets[1], _uid);
    writer.writeBytes(offsets[2], _username);
    writer.writeBool(offsets[3], _stringify);
    writer.writeLong(offsets[4], _hashCode);
    return bufferSize;
  }

  @override
  IsarUser deserialize(IsarCollection<IsarUser> collection, int id,
      BinaryReader reader, List<int> offsets) {
    final object = IsarUser(
      emailAddress: reader.readString(offsets[0]),
      id: id,
      uid: reader.readString(offsets[1]),
      username: reader.readString(offsets[2]),
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
        return (reader.readString(offset)) as P;
      case 3:
        return (reader.readBool(offset)) as P;
      case 4:
        return (reader.readLong(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }
}

extension IsarUserQueryWhereSort on QueryBuilder<IsarUser, IsarUser, QWhere> {
  QueryBuilder<IsarUser, IsarUser, QAfterWhere> anyId() {
    return addWhereClause(WhereClause(indexName: '_id'));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhere> anyUid() {
    return addWhereClause(WhereClause(indexName: 'uid'));
  }
}

extension IsarUserQueryWhere on QueryBuilder<IsarUser, IsarUser, QWhereClause> {
  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idEqualTo(int? id) {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idNotEqualTo(int? id) {
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

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idIsNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      upper: [null],
      includeUpper: true,
      lower: [null],
      includeLower: true,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> idIsNotNull() {
    return addWhereClause(WhereClause(
      indexName: '_id',
      lower: [null],
      includeLower: false,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> uidEqualTo(String uid) {
    return addWhereClause(WhereClause(
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

extension IsarUserQueryFilter
    on QueryBuilder<IsarUser, IsarUser, QFilterCondition> {
  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
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
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition.between(
      property: 'emailAddress',
      lower: lower,
      upper: upper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition>
      emailAddressStartsWith(String value, {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.startsWith,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressEndsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.endsWith,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.contains,
      property: 'emailAddress',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> emailAddressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.matches,
      property: 'emailAddress',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idIsNull() {
    return addFilterCondition(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idEqualTo(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idGreaterThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idLessThan(
    int? value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper,
  ) {
    return addFilterCondition(FilterCondition.between(
      property: 'id',
      lower: lower,
      upper: upper,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidEqualTo(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidGreaterThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidLessThan(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidBetween(
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

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidStartsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.startsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidEndsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.endsWith,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.contains,
      property: 'uid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> uidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.matches,
      property: 'uid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return addFilterCondition(FilterCondition.between(
      property: 'username',
      lower: lower,
      upper: upper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameStartsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.startsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameEndsWith(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.endsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.contains,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.matches,
      property: 'username',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> stringifyEqualTo(
    bool value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeEqualTo(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeGreaterThan(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.gt,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeLessThan(
    int value,
  ) {
    return addFilterCondition(FilterCondition(
      type: ConditionType.lt,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<IsarUser, IsarUser, QAfterFilterCondition> hashCodeBetween(
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

extension IsarUserQueryWhereSortBy
    on QueryBuilder<IsarUser, IsarUser, QSortBy> {
  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByEmailAddress() {
    return addSortByInternal('emailAddress', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByEmailAddressDesc() {
    return addSortByInternal('emailAddress', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
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

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUid() {
    return addSortByInternal('uid', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUidDesc() {
    return addSortByInternal('uid', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<IsarUser, IsarUser, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }
}

extension IsarUserQueryWhereDistinct
    on QueryBuilder<IsarUser, IsarUser, QDistinct> {
  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByEmailAddress(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('emailAddress', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByUid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uid', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('username', caseSensitive: caseSensitive);
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<IsarUser, IsarUser, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }
}

extension IsarUserQueryProperty
    on QueryBuilder<IsarUser, IsarUser, QQueryProperty> {
  QueryBuilder<IsarUser, String, QQueryOperations> emailAddressProperty() {
    return addPropertyName('emailAddress');
  }

  QueryBuilder<IsarUser, int?, QQueryOperations> idProperty() {
    return addPropertyName('id');
  }

  QueryBuilder<IsarUser, String, QQueryOperations> uidProperty() {
    return addPropertyName('uid');
  }

  QueryBuilder<IsarUser, String, QQueryOperations> usernameProperty() {
    return addPropertyName('username');
  }

  QueryBuilder<IsarUser, bool, QQueryOperations> stringifyProperty() {
    return addPropertyName('stringify');
  }

  QueryBuilder<IsarUser, int, QQueryOperations> hashCodeProperty() {
    return addPropertyName('hashCode');
  }
}
