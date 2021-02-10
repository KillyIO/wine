import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:models/models.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockConfigsBox extends Mock implements Box<Config> {}

class MockPlaceholdersBox extends Mock implements Box<String> {}
