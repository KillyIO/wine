import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/chapter.dart';

abstract class IOnlineChapterDatabaseFacade {
  Future<Either<DatabaseFailure, Chapter>> createChapter(Chapter chapter);
  Future<Either<DatabaseFailure, Chapter>> getChapterById(String uid);
}
