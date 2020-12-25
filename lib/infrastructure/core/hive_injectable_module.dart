import 'dart:io';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/constants.dart';

/// @nodoc
@module
abstract class HiveInjectableModule {
  /// @nodoc
  @preResolve
  @lazySingleton
  Future<Box<Config>> get openConfigsBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(ConfigAdapter());

    // ignore: cascade_invocations
    Hive.init(dirPath);

    return Hive.openBox<Config>(Constants.configsBox);
  }

  /// @nodoc
  @preResolve
  @lazySingleton
  Future<Box<String>> get openPlaceholdersBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.init(dirPath);

    return Hive.openBox<String>(Constants.placeholdersBox);
  }

  /// @nodoc
  @preResolve
  @lazySingleton
  Future<Box<Session>> get openSessionsBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(SessionAdapter());

    // ignore: cascade_invocations
    Hive.init(dirPath);

    return Hive.openBox<Session>(Constants.sessionsBox);
  }
}
