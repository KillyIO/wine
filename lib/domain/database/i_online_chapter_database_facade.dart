import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/models/chapter.dart';

abstract class IOnlineChapterDatabaseFacade {
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterBookmarksCount(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterById(String uid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterLikesCount(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersBySeriesUidAndIndex(
    String seriesUid,
    int index, {
    bool loadAuthors = false,
    bool loadSeries = false,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChaptersByUserId(
    String uid, {
    Chapter lastChapter,
    bool loadSeries = false,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadChapterViewsCount(String chapterUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadFirstChapter(String seriesUid);
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserBookmarkStatus({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUserLikeStatus({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, DatabaseSuccess>> publishChapter(Chapter chapter);
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
