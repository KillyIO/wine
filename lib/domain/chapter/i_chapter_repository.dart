import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/chapter/chapter_failure.dart';
import 'package:wine/domain/core/unique_id.dart';

/// @nodoc
abstract class IChapterRepository {
  /// @nodoc
  Future<Result<Unit, ChapterFailure>> checkChapterOneAlreadyExists(
    UniqueID seriesID,
  );

  /// @nodoc
  Future<Result<Unit, ChapterFailure>> createChapter(Chapter chapter);

  /// @nodoc
  Future<Result<Unit, ChapterFailure>> deleteChapter(UniqueID uid);

  /// @nodoc
  Future<Result<Chapter, ChapterFailure>> loadChapterByID(UniqueID uid);

  /// @nodoc
  Future<Result<Chapter, ChapterFailure>> loadChapterBySeriesIDAndIndex(
    UniqueID seriesID,
    int index,
  );

  /// @nodoc
  Future<Result<List<Chapter>, ChapterFailure>> loadChaptersByUserID(
    UniqueID uid, {
    UniqueID? lastChapterID,
  });

  /// @nodoc
  Future<Result<Unit, ChapterFailure>> updateChapter(Chapter chapter);

  /// @nodoc
  Future<Result<String, ChapterFailure>> uploadCover(File cover);
}
