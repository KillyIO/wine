import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';
import 'package:wine/infrastructure/user/hive_user.dart';

/// @nodoc
@module
abstract class HiveInjectableModule {
  /// Initialize and return an instance of Hive.
  @Environment(Environment.dev)
  @Environment(Environment.prod)
  @preResolve
  @lazySingleton
  Future<HiveInterface> get hive async {
    if (Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter<HiveUser>(HiveUserAdapter());
    }
    if (Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter<HiveSettings>(HiveSettingsAdapter());
    }

    await Hive.close();
    await Hive.initFlutter();

    return Hive;
  }
}
