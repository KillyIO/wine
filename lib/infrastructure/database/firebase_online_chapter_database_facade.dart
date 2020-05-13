import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/utils/paths.dart';

@lazySingleton
@RegisterAs(IOnlineChapterDatabaseFacade)
class FirebaseOnlineChapterDatabaseFacade
    implements IOnlineChapterDatabaseFacade {
  final Firestore _firestore;

  FirebaseOnlineChapterDatabaseFacade(this._firestore);

  @override
  Future<Either<DatabaseFailure, Chapter>> createChapter(
    Chapter chapter,
  ) async {
    final DocumentReference ref =
        _firestore.collection(Paths.chaptersPath).document(chapter.uid);

    chapter
      ..createdAt = DateTime.now().millisecondsSinceEpoch
      ..updatedAt = DateTime.now().millisecondsSinceEpoch;

    await ref.setData(chapter.toMap(), merge: true);

    return getChapterById(chapter.uid);
  }

  @override
  Future<Either<DatabaseFailure, Chapter>> getChapterById(String chapterUid) async {
    final DocumentReference ref =
        _firestore.collection(Paths.chaptersPath).document(chapterUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final Chapter chapter = Chapter.fromFirestore(snapshot);
      return right(chapter);
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }
}
