import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/models/config.dart';
import 'package:wine/domain/models/user.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockConfigsBox extends Mock implements Box<Config> {}

class MockPlaceholdersBox extends Mock implements Box<String> {}

class MockSessionsBox extends Mock implements Box<User> {}
