// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_settings.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetIsarSettingsCollection on Isar {
  IsarCollection<IsarSettings> get settings => this.collection();
}

const IsarSettingsSchema = CollectionSchema(
  name: r'IsarSettings',
  id: -2003972169886166418,
  properties: {
    r'enableBranchesBookmarksCount': PropertySchema(
      id: 0,
      name: r'enableBranchesBookmarksCount',
      type: IsarType.bool,
    ),
    r'enableBranchesLikesCount': PropertySchema(
      id: 1,
      name: r'enableBranchesLikesCount',
      type: IsarType.bool,
    ),
    r'enableBranchesViewsCount': PropertySchema(
      id: 2,
      name: r'enableBranchesViewsCount',
      type: IsarType.bool,
    ),
    r'enableTreesBookmarksCount': PropertySchema(
      id: 3,
      name: r'enableTreesBookmarksCount',
      type: IsarType.bool,
    ),
    r'enableTreesLikesCount': PropertySchema(
      id: 4,
      name: r'enableTreesLikesCount',
      type: IsarType.bool,
    ),
    r'enableTreesViewsCount': PropertySchema(
      id: 5,
      name: r'enableTreesViewsCount',
      type: IsarType.bool,
    ),
    r'stringify': PropertySchema(
      id: 6,
      name: r'stringify',
      type: IsarType.bool,
    )
  },
  estimateSize: _isarSettingsEstimateSize,
  serialize: _isarSettingsSerialize,
  deserialize: _isarSettingsDeserialize,
  deserializeProp: _isarSettingsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarSettingsGetId,
  getLinks: _isarSettingsGetLinks,
  attach: _isarSettingsAttach,
  version: '3.0.5',
);

int _isarSettingsEstimateSize(
  IsarSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _isarSettingsSerialize(
  IsarSettings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.enableBranchesBookmarksCount);
  writer.writeBool(offsets[1], object.enableBranchesLikesCount);
  writer.writeBool(offsets[2], object.enableBranchesViewsCount);
  writer.writeBool(offsets[3], object.enableTreesBookmarksCount);
  writer.writeBool(offsets[4], object.enableTreesLikesCount);
  writer.writeBool(offsets[5], object.enableTreesViewsCount);
  writer.writeBool(offsets[6], object.stringify);
}

IsarSettings _isarSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarSettings(
    enableBranchesBookmarksCount: reader.readBoolOrNull(offsets[0]),
    enableBranchesLikesCount: reader.readBoolOrNull(offsets[1]),
    enableBranchesViewsCount: reader.readBoolOrNull(offsets[2]),
    enableTreesBookmarksCount: reader.readBoolOrNull(offsets[3]),
    enableTreesLikesCount: reader.readBoolOrNull(offsets[4]),
    enableTreesViewsCount: reader.readBoolOrNull(offsets[5]),
    id: id,
  );
  return object;
}

P _isarSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
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
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarSettingsGetId(IsarSettings object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarSettingsGetLinks(IsarSettings object) {
  return [];
}

void _isarSettingsAttach(
    IsarCollection<dynamic> col, Id id, IsarSettings object) {}

extension IsarSettingsQueryWhereSort
    on QueryBuilder<IsarSettings, IsarSettings, QWhere> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarSettingsQueryWhere
    on QueryBuilder<IsarSettings, IsarSettings, QWhereClause> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> idBetween(
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

extension IsarSettingsQueryFilter
    on QueryBuilder<IsarSettings, IsarSettings, QFilterCondition> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesBookmarksCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enableBranchesBookmarksCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesBookmarksCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enableBranchesBookmarksCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesBookmarksCountEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableBranchesBookmarksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesLikesCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enableBranchesLikesCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesLikesCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enableBranchesLikesCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesLikesCountEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableBranchesLikesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesViewsCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enableBranchesViewsCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesViewsCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enableBranchesViewsCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableBranchesViewsCountEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableBranchesViewsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesBookmarksCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enableTreesBookmarksCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesBookmarksCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enableTreesBookmarksCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesBookmarksCountEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableTreesBookmarksCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesLikesCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enableTreesLikesCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesLikesCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enableTreesLikesCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesLikesCountEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableTreesLikesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesViewsCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enableTreesViewsCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesViewsCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enableTreesViewsCount',
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      enableTreesViewsCountEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enableTreesViewsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarSettings, IsarSettings, QAfterFilterCondition>
      stringifyEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stringify',
        value: value,
      ));
    });
  }
}

extension IsarSettingsQueryObject
    on QueryBuilder<IsarSettings, IsarSettings, QFilterCondition> {}

extension IsarSettingsQueryLinks
    on QueryBuilder<IsarSettings, IsarSettings, QFilterCondition> {}

extension IsarSettingsQuerySortBy
    on QueryBuilder<IsarSettings, IsarSettings, QSortBy> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesBookmarksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesBookmarksCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesBookmarksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesBookmarksCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesLikesCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesLikesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesLikesCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesViewsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesViewsCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableBranchesViewsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesViewsCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesBookmarksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesBookmarksCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesBookmarksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesBookmarksCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesLikesCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesLikesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesLikesCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesViewsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesViewsCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      sortByEnableTreesViewsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesViewsCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> sortByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension IsarSettingsQuerySortThenBy
    on QueryBuilder<IsarSettings, IsarSettings, QSortThenBy> {
  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesBookmarksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesBookmarksCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesBookmarksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesBookmarksCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesLikesCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesLikesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesLikesCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesViewsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesViewsCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableBranchesViewsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableBranchesViewsCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesBookmarksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesBookmarksCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesBookmarksCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesBookmarksCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesLikesCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesLikesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesLikesCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesViewsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesViewsCount', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy>
      thenByEnableTreesViewsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enableTreesViewsCount', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.asc);
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QAfterSortBy> thenByStringifyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stringify', Sort.desc);
    });
  }
}

extension IsarSettingsQueryWhereDistinct
    on QueryBuilder<IsarSettings, IsarSettings, QDistinct> {
  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableBranchesBookmarksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableBranchesBookmarksCount');
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableBranchesLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableBranchesLikesCount');
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableBranchesViewsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableBranchesViewsCount');
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableTreesBookmarksCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableTreesBookmarksCount');
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableTreesLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableTreesLikesCount');
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct>
      distinctByEnableTreesViewsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enableTreesViewsCount');
    });
  }

  QueryBuilder<IsarSettings, IsarSettings, QDistinct> distinctByStringify() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stringify');
    });
  }
}

extension IsarSettingsQueryProperty
    on QueryBuilder<IsarSettings, IsarSettings, QQueryProperty> {
  QueryBuilder<IsarSettings, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesBookmarksCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableBranchesBookmarksCount');
    });
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesLikesCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableBranchesLikesCount');
    });
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableBranchesViewsCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableBranchesViewsCount');
    });
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesBookmarksCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableTreesBookmarksCount');
    });
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesLikesCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableTreesLikesCount');
    });
  }

  QueryBuilder<IsarSettings, bool?, QQueryOperations>
      enableTreesViewsCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enableTreesViewsCount');
    });
  }

  QueryBuilder<IsarSettings, bool, QQueryOperations> stringifyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stringify');
    });
  }
}
