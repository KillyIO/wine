import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/models/series.dart';

import '../../../mocks/firebase_firestore_mocks.dart';
import '../../../utils/constants.dart';

void main() {
  final data = <String, dynamic>{};

  setUp(() {
    data['isDeleted'] = false;
    data['isNSFW'] = false;
    data['createdAt'] = testTimeStamp;
    data['updatedAt'] = testTimeStamp;
    data['authorUID'] = testUserUID;
    data['coverURL'] = testCoverURL;
    data['deletionReason'] = null;
    data['genre'] = testGenre;
    data['genreOptional'] = null;
    data['language'] = testLanguage;
    data['subtitle'] = null;
    data['summary'] = testSummaryEmpty;
    data['title'] = testTitle;
    data['uid'] = testSeriesUID;
  });

  group(
    'Series -',
    () {
      group(
        'fromFirestore -',
        () {
          test('When DocumentSnapshot null Then return null', () {
            final series = Series.fromFirestore(null);

            expect(series, null);
          });

          test('When DocumentSnapshot.data null Then return null', () {
            final mockDocumentSnapshot = MockDocumentSnapshot();

            when(mockDocumentSnapshot.data()).thenReturn(null);

            final series = Series.fromFirestore(mockDocumentSnapshot);

            expect(series, null);
          });

          test(
            '''When DocumentSnapshot And DocumentSnapshot.data not null Then return Series''',
            () {
              final mockDocumentSnapshot = MockDocumentSnapshot();

              when(mockDocumentSnapshot.data()).thenReturn(data);

              final series = Series.fromFirestore(mockDocumentSnapshot);

              expect(series.authorUID, data['authorUID']);
              expect(series.coverURL, data['coverURL']);
              expect(series.createdAt, data['createdAt']);
              expect(series.deletionReason, data['deletionReason']);
              expect(series.genre, data['genre']);
              expect(series.genreOptional, data['genreOptional']);
              expect(series.isDeleted, data['isDeleted']);
              expect(series.isNSFW, data['isNSFW']);
              expect(series.language, data['language']);
              expect(series.subtitle, data['subtitle']);
              expect(series.summary, data['summary']);
              expect(series.title, data['title']);
              expect(series.uid, data['uid']);
              expect(series.updatedAt, data['updatedAt']);
            },
          );
        },
      );

      group(
        'isPublishable -',
        () {
          test(
            'When all required members null Then Series not publishable',
            () {
              final series = Series();

              expect(series.isPublishable, false);
            },
          );

          test(
            'When one required member non-null Then Series not publishable',
            () {
              final series = Series(uid: data['uid']);

              expect(series.isPublishable, false);
            },
          );

          test('When all required members valid Then Series complete', () {
            data['summary'] = testSummary;

            final series = Series(
              authorUID: data['authorUID'],
              coverURL: data['coverURL'],
              createdAt: data['createdAt'],
              deletionReason: data['deletionReason'],
              genre: data['genre'],
              genreOptional: data['genreOptional'],
              isDeleted: data['isDeleted'],
              isNSFW: data['isNSFW'],
              language: data['language'],
              subtitle: data['subtitle'],
              summary: data['summary'],
              title: data['title'],
              uid: data['uid'],
              updatedAt: data['updatedAt'],
            );

            expect(series.isPublishable, true);
          });
        },
      );

      group(
        'isSaveable -',
        () {
          test(
            'When all required members null Then Series not saveable',
            () {
              final series = Series();

              expect(series.isSaveable, false);
            },
          );

          test(
            'When one required member non-null Then Series not saveable',
            () {
              final series = Series(uid: data['uid']);

              expect(series.isSaveable, false);
            },
          );

          test(
            'When all required members non-null Then Series complete',
            () {
              final series = Series(
                authorUID: data['authorUID'],
                uid: data['uid'],
              );

              expect(series.isSaveable, true);
            },
          );
        },
      );
    },
  );
}
