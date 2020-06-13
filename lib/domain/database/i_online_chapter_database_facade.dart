import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/chapter.dart';

abstract class IOnlineChapterDatabaseFacade {
  Future<Either<DatabaseFailure, Chapter>> createChapter(Chapter chapter);
  Future<Either<DatabaseFailure, Chapter>> getChapterById(String uid);
  Future<Either<DatabaseFailure, List<Chapter>>> getChaptersByUserId(
    String uid, {
    Chapter lastChapter,
    bool getSeries = false,
  });
  Future<Either<DatabaseFailure, dynamic>> getChaptersBySeriesUidAndIndex({
    @required String seriesUid,
    @required int index,
    bool getAuthors = false,
    bool getSeries = false,
  });
  Future<Either<DatabaseFailure, int>> getChapterViewsCount(String chapterUid);
  Future<Either<DatabaseFailure, Unit>> updateChapterViews({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, int>> getChapterLikesCount(String chapterUid);
  Future<Either<DatabaseFailure, bool>> getUserLikeStatus({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, Unit>> updateChapterLikes({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, int>> getChapterBookmarksCount(
    String chapterUid,
  );
  Future<Either<DatabaseFailure, bool>> getUserBookmarkStatus({
    @required String userUid,
    @required String chapterUid,
  });
  Future<Either<DatabaseFailure, Unit>> updateChapterBookmarks({
    @required String userUid,
    @required String chapterUid,
  });
}
