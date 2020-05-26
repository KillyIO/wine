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
  Future<Either<DatabaseFailure, Chapter>> getChapterById(
      String chapterUid) async {
    final DocumentReference ref =
        _firestore.collection(Paths.chaptersPath).document(chapterUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final Chapter chapter = Chapter.fromFirestore(snapshot);
      return right(chapter);
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, List<Chapter>>> getChaptersByUserId(
    String uid, {
    Chapter lastChapter,
  }) async {
    final CollectionReference chaptersCollection =
        _firestore.collection(Paths.chaptersPath);

    QuerySnapshot querySnapshot;
    if (lastChapter != null) {
      final DocumentSnapshot lastDocument =
          await chaptersCollection.document(lastChapter.uid).get();

      querySnapshot = await chaptersCollection
          .startAfterDocument(lastDocument)
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    } else {
      querySnapshot = await chaptersCollection
          .where('authorUid', isEqualTo: uid)
          .orderBy('createdAt', descending: true)
          .limit(20)
          .getDocuments();
    }

    final List<Chapter> chaptersList = <Chapter>[];
    for (final DocumentSnapshot doc in querySnapshot.documents) {
      chaptersList.add(Chapter.fromFirestore(doc));
    }
    return right(chaptersList);
  }

  @override
  Future<Either<DatabaseFailure, dynamic>> getChaptersBySeriesUidAndIndex({
    String seriesUid,
    int index,
  }) async {
    final CollectionReference chaptersCollection =
        _firestore.collection(Paths.chaptersPath);

    final QuerySnapshot querySnapshot = await chaptersCollection
        .where('seriesUid', isEqualTo: seriesUid)
        .where('index', isEqualTo: index)
        .getDocuments();

    if (querySnapshot.documents.length > 1) {
      final List<Chapter> chapters = <Chapter>[];

      for (final DocumentSnapshot document in querySnapshot.documents) {
        chapters.add(Chapter.fromFirestore(document));
      }
      return right(chapters);
    } else {
      final Chapter chapterOne =
          Chapter.fromFirestore(querySnapshot.documents[0]);

      return right(chapterOne);
    }
  }
}
