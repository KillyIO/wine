import 'package:hive/hive.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/models/hive/config.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockConfigBox extends Mock implements Box<Config> {}
