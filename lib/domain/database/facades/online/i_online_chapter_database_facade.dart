import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/chapter_database_success.dart';

/// @nodoc
abstract class IOnlineChapterDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> deleteChapter(
    String chapterUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> deleteChapterCover(
    String url,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadBookmarkedChaptersByUserUID(String userUID, {Chapter lastChapter});

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadChapterBookmarksCount(String chapterUID);

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChapterByUID(
    String chapterUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChapterLikesCount(
    String chapterUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadChaptersBySeriesUIDAndIndex(String seriesUID, int index);

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChaptersByUserUID(
    String userUID, {
    Chapter lastChapter,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadChapterViewsCount(
    String chapterUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadFirstChapter(
    String seriesUID,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadNextChaptersAuthorsMap(String chapterUID);

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      loadUserBookmarkStatus({
    @required String userUID,
    @required String chapterUID,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> loadUserLikeStatus({
    @required String userUID,
    @required String chapterUID,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> publishChapter(
    Chapter chapter,
  );

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      updateChapterBookmarksAndBookmarksCount({
    @required String userUID,
    @required String chapterUID,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      updateChapterLikesAndLikesCount({
    @required String userUID,
    @required String chapterUID,
    bool isInit = false,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>>
      updateChapterViewsAndViewsCount({
    @required String userUID,
    @required String chapterUID,
    bool isInit = false,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, ChapterDatabaseSuccess>> uploadCover(
    File cover,
  );
}
