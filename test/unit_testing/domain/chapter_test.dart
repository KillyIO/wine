import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/models/chapter.dart';

import '../../mocks/firebase_firestore_mocks.dart';
import '../../utils/constants.dart';

void main() {
  final data = <String, dynamic>{};

  setUp(() {
    data['isDeleted'] = false;
    data['isLastChapter'] = false;
    data['isNSFW'] = false;
    data['createdAt'] = testTimeStamp;
    data['index'] = 1;
    data['updatedAt'] = testTimeStamp;
    data['authorUID'] = testUserUID;
    data['licence'] = testLicence;
    data['coverURL'] = testCoverURL;
    data['deletionReason'] = null;
    data['genre'] = testGenre;
    data['genreOptional'] = null;
    data['language'] = testLanguage;
    data['previousChapterUID'] = null;
    data['seriesUID'] = testSeriesUID;
    data['story'] = testStoryEmpty;
    data['title'] = testTitle;
    data['uid'] = testChapterUID;
  });

  group(
    'Chapter -',
    () {
      group(
        'fromFirestore -',
        () {
          test('When DocumentSnapshot null Then return null', () {
            final chapter = Chapter.fromFirestore(null);

            expect(chapter, null);
          });

          test('When DocumentSnapshot.data null Then return null', () {
            final mockDocumentSnapshot = MockDocumentSnapshot();

            when(mockDocumentSnapshot.data()).thenReturn(null);

            final chapter = Chapter.fromFirestore(mockDocumentSnapshot);

            expect(chapter, null);
          });

          test(
            '''When DocumentSnapshot And DocumentSnapshot.data not null Then return Chapter''',
            () {
              final mockDocumentSnapshot = MockDocumentSnapshot();

              when(mockDocumentSnapshot.data()).thenReturn(data);

              final chapter = Chapter.fromFirestore(mockDocumentSnapshot);

              expect(chapter.authorUID, data['authorUID']);
              expect(chapter.licence, data['licence']);
              expect(chapter.coverURL, data['coverURL']);
              expect(chapter.createdAt, data['createdAt']);
              expect(chapter.deletionReason, data['deletionReason']);
              expect(chapter.genre, data['genre']);
              expect(chapter.genreOptional, data['genreOptional']);
              expect(chapter.index, data['index']);
              expect(chapter.isDeleted, data['isDeleted']);
              expect(chapter.isLastChapter, data['isLastChapter']);
              expect(chapter.isNSFW, data['isNSFW']);
              expect(chapter.language, data['language']);
              expect(chapter.previousChapterUID, data['previousChapterUID']);
              expect(chapter.seriesUID, data['seriesUID']);
              expect(chapter.story, data['story']);
              expect(chapter.title, data['title']);
              expect(chapter.uid, data['uid']);
              expect(chapter.updatedAt, data['updatedAt']);
            },
          );
        },
      );

      group(
        'isPublishable -',
        () {
          test(
            'When all required members null Then Chapter is not publishable',
            () {
              final chapter = Chapter();

              expect(chapter.isPublishable, false);
            },
          );

          test(
            '''When one required member non-null Then Chapter is not publishable''',
            () {
              final chapter = Chapter(uid: data['uid']);

              expect(chapter.isPublishable, false);
            },
          );

          test('When all required members valid Then Chapter is complete', () {
            data['story'] = testStory;

            final chapter = Chapter(
              authorUID: data['authorUID'],
              licence: data['licence'],
              coverURL: data['coverURL'],
              createdAt: data['createdAt'],
              deletionReason: data['deletionReason'],
              genre: data['genre'],
              genreOptional: data['genreOptional'],
              index: data['index'],
              isDeleted: data['isDeleted'],
              isLastChapter: data['isLastChapter'],
              isNSFW: data['isNSFW'],
              language: data['language'],
              previousChapterUID: data['previousChapterUID'],
              seriesUID: data['seriesUID'],
              story: data['story'],
              title: data['title'],
              uid: data['uid'],
              updatedAt: data['updatedAt'],
            );

            expect(chapter.isPublishable, true);
          });
        },
      );

      group(
        'isSaveable -',
        () {
          test(
            'When all required members null Then Chapter is not saveable',
            () {
              final chapter = Chapter();

              expect(chapter.isSaveable, false);
            },
          );

          test(
            '''When one required member non-null Then Chapter is not saveable''',
            () {
              final chapter = Chapter(uid: data['uid']);

              expect(chapter.isSaveable, false);
            },
          );

          test(
            'When all required members non-null Then Chapter is saveable',
            () {
              final chapter = Chapter(
                authorUID: data['authorUID'],
                seriesUID: data['seriesUID'],
                uid: data['uid'],
              );

              expect(chapter.isSaveable, true);
            },
          );
        },
      );
    },
  );
}
