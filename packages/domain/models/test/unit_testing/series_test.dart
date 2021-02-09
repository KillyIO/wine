import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:models/models.dart';
import 'package:models/series.dart';

import '../mocks/firebase_firestore_mocks.dart';

void main() {
  final data = <String, dynamic>{};

  setUp(() {
    data['authorUID'] = 'authorUID';
    data['coverURL'] = 'https:/www.website.com/image.png';
    data['createdAt'] = 15468498416;
    data['deletionReason'] = null;
    data['genre'] = 'horror';
    data['genreOptional'] = null;
    data['isDeleted'] = false;
    data['isNSFW'] = false;
    data['language'] = 'en';
    data['subtitle'] = null;
    data['summary'] = 'some summary';
    data['title'] = 'title';
    data['uid'] = 'uid';
    data['updatedAt'] = 156651351;
  });

  group(
    'Series -',
    () {
      group(
        'fromFirestore -',
        () {
          test('When DocumentSnapshot null Then return null', () {
            final user = User.fromFirestore(null);

            expect(user, null);
          });

          test('When DocumentSnapshot.data null Then return null', () {
            final mockDocumentSnapshot = MockDocumentSnapshot();

            when(mockDocumentSnapshot.data()).thenReturn(null);

            final user = User.fromFirestore(mockDocumentSnapshot);

            expect(user, null);
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
            'When all required members null Then Series is not publishable',
            () {
              final series = Series();

              expect(series.isPublishable, false);
            },
          );

          test(
            '''When one required member non-null Then Series is not publishable''',
            () {
              final series = Series(uid: data['uid']);

              expect(series.isPublishable, false);
            },
          );

          test('When all required members valid Then Series is complete', () {
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
            'When all required members null Then Series is not saveable',
            () {
              final series = Series();

              expect(series.isSaveable, false);
            },
          );

          test(
            '''When one required member non-null Then Series is not saveable''',
            () {
              final series = Series(uid: data['uid']);

              expect(series.isSaveable, false);
            },
          );

          test(
            'When all required members non-null Then Series is complete',
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
