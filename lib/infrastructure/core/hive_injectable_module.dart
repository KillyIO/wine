import 'dart:io';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/domain/models/hive/session.dart';

@registerModule
abstract class HiveInjectableModule {
  @preResolve
  @lazySingleton
  Future<Box<Session>> get openSessionsBoxes async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(SessionAdapter());

    Hive.init(dirPath);

    return Hive.openBox<Session>('sessionsBox');
  }

  @preResolve
  @lazySingleton
  Future<Box<Config>> get openConfigsBoxes async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(ConfigAdapter());

    Hive.init(dirPath);

    return Hive.openBox<Config>('configsBox');
  }
}
