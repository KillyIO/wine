import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/infrastructure/user/isar_user.dart';

class MockIsar extends Mock implements Isar {}

class MockIsarCollection<T> extends Mock implements IsarCollection<T> {}

class MockIsarUser extends Mock implements IsarUser {}

class MockQuery<T> extends Mock implements Query<T> {}

class MockQueryBuilder<T, U, V> extends Mock implements QueryBuilder<T, U, V> {}

class MockQAfterWhereClause extends Mock implements QAfterWhereClause {}

class MockQWhere extends Mock implements QWhere {}

class MockWhereClause extends Mock implements WhereClause {}
