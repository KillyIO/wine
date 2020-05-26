import 'dart:io';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/constants.dart';

@registerModule
abstract class HiveInjectableModule {
  @preResolve
  @lazySingleton
  Future<Box<Session>> get openSessionsBox async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(SessionAdapter());

    Hive.init(dirPath);

    return Hive.openBox<Session>(Constants.sessionsBox);
  }

  @preResolve
  @lazySingleton
  Future<Box<Config>> get openConfigsBox async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(ConfigAdapter());

    Hive.init(dirPath);

    return Hive.openBox<Config>(Constants.configsBox);
  }

  @preResolve
  @lazySingleton
  Future<Box<SeriesDraft>> get openSeriesDraftsBox async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(SeriesDraftAdapter());

    Hive.init(dirPath);

    return Hive.openBox<SeriesDraft>(Constants.seriesDraftsBox);
  }

  @preResolve
  @lazySingleton
  Future<Box<ChapterDraft>> get openChapterDraftsBox async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.registerAdapter(ChapterDraftAdapter());

    Hive.init(dirPath);

    return Hive.openBox<ChapterDraft>(Constants.chapterDraftsBox);
  }

  @preResolve
  @lazySingleton
  Future<Box<String>> get openPlaceholdersBox async {
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/db';
    await Directory(dirPath).create(recursive: true);

    Hive.init(dirPath);

    return Hive.openBox<String>(Constants.placeholdersBox);
  }
}
