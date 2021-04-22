import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';
import 'package:wine/infrastructure/user/hive_user.dart';

/// @nodoc
@module
abstract class HiveInjectableModule {
  /// Initialize and return an instance of Hive.
  @preResolve
  @lazySingleton
  Future<HiveInterface> get hive async {
    Hive
      ..registerAdapter<HiveUser>(HiveUserAdapter())
      ..registerAdapter<HiveSettings>(HiveSettingsAdapter());

    await Hive.initFlutter();

    return Hive;
  }
}
