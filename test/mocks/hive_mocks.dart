import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';
import 'package:wine/infrastructure/user/hive_user.dart';

class MockHiveInterface extends Mock implements HiveInterface {}

class MockBox<T> extends Mock implements Box<T> {}

class MockHiveUser extends Mock implements HiveUser {}

class MockHiveSettings extends Mock implements HiveSettings {}
