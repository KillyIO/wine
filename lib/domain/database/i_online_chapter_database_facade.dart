import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/chapter_minified.dart';

abstract class IOnlineChapterDatabaseFacade {
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteChapter(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteChapterCover(String url);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterBookmarksCount(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterByUid(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterLikesCount(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersMinifiedBySeriesUidAndIndex(String seriesUid, int index);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersMinifiedByUserUid(
    String userUid, {
    ChapterMinified lastChapterMinified,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterViewsCount(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadFirstChapter(String seriesUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadFirstChapterMinified(String seriesUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserBookmarkStatus({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserLikeStatus({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> publishChapter(ChapterMinified chapterMinified, Chapter chapter);
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterBookmarks({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterLikes({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateChapterViews({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> uploadCover(File cover);
}
