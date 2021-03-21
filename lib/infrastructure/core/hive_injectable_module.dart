import 'dart:io';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/utils/constants/boxes.dart';

/// @nodoc
@module
abstract class HiveInjectableModule {
  /// @nodoc
  @preResolve
  @lazySingleton
  @Named(defaultCoversBox)
  Future<Box<String>> get openDefaultCoversBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.init(dirPath);

    return Hive.openBox<String>(defaultCoversBox);
  }

  /// @nodoc
  @preResolve
  @lazySingleton
  @Named(settingsBox)
  Future<Box<Map<String, dynamic>>> get openSettingsBox async {
    final extDir = await getApplicationDocumentsDirectory();
    final dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.init(dirPath);

    return Hive.openBox<Map<String, dynamic>>(settingsBox);
  }
}
