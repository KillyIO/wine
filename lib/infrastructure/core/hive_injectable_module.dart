import 'dart:io';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/domain/models/settings.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/constants/boxes.dart';

/// @nodoc
@module
abstract class HiveInjectableModule {
  /// @nodoc
  @preResolve
  @lazySingleton
  Future<Box<Settings>> get openSettingsBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(SettingsAdapter());

    // ignore: cascade_invocations
    Hive.init(dirPath);

    return Hive.openBox<Settings>(settingsBox);
  }

  /// @nodoc
  @preResolve
  @lazySingleton
  Future<Box<String>> get openPlaceholdersBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.init(dirPath);

    return Hive.openBox<String>(placeholdersBox);
  }

  /// @nodoc
  @preResolve
  @lazySingleton
  Future<Box<User>> get openSessionsBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(UserAdapter());

    // ignore: cascade_invocations
    Hive.init(dirPath);

    return Hive.openBox<User>(sessionsBox);
  }
}
