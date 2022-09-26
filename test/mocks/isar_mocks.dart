import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/infrastructure/auth/isar_default_cover.dart';
import 'package:wine/features/settings/isar_settings.infrastructure.dart';
import 'package:wine/features/user/isar_user.infrastructure.dart';

class MockIsar extends Mock implements Isar {}

class MockIsarCollection<T> extends Mock implements IsarCollection<T> {}

class MockIsarDefaultCover extends Mock implements IsarDefaultCover {}

class MockIsarSettings extends Mock implements IsarSettings {}

class MockIsarUser extends Mock implements IsarUser {}

class MockQuery<T> extends Mock implements Query<T> {}

class MockQueryBuilder<T, U, V> extends Mock implements QueryBuilder<T, U, V> {}

class MockQAfterWhereClause extends Mock implements QAfterWhereClause {}

class MockQWhere extends Mock implements QWhere {}

class MockWhereClause extends Mock implements WhereClause {}
