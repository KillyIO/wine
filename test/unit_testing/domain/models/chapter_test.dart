import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/models/chapter.dart';

import '../../../mocks/firebase_firestore_mocks.dart';

void main() {
  final data = <String, dynamic>{};

  setUp(() {
    data['isDeleted'] = false;
    data['isLastChapter'] = false;
    data['isNSFW'] = false;
    data['createdAt'] = 854841600000;
    data['index'] = 1;
    data['updatedAt'] = 854841600000;
    data['authorUID'] = 'uid';
    data['licence'] = 'licence';
    data['coverURL'] = 'https://www.website.com/cover.png';
    data['deletionReason'] = null;
    data['genre'] = 'genre';
    data['genreOptional'] = null;
    data['language'] = 'iso';
    data['previousChapterUID'] = null;
    data['seriesUID'] = 'uid';
    data['story'] = 'story';
    data['title'] = 'title';
    data['uid'] = 'uid';
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
            data['story'] =
                '''aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed libero enim sed faucibus turpis in eu mi bibendum neque egestas congue quisque egestas diam in arcu cursus euismod quis viverra nibh cras pulvinar mattis nunc sed blandit libero volutpat sed cras ornare arcu dui vivamus arcu felis bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla pellentesque dignissim enim sit amet venenatis urna cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla ut morbi tincidunt augue interdum velit euismod in pellentesque massa placerat duis ultricies lacus sed turpis tincidunt id aliquet risus feugiat in ante metus dictum at tempor commodo ullamcorper a lacus vestibulum sed arcu non odio euismod lacinia at quis risus sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque in dictum non consectetur a erat nam at lectus urna duis convallis convallis tellus id interdum velit laoreet id donec ultrices tincidunt arcu non sodales neque sodales ut etiam sit amet nisl purus in mollis nunc sed id semper risus in hendrerit gravida rutrum quisque non tellus orci ac auctor augue mauris augue neque gravida in fermentum et sollicitudin ac orci phasellus egestas tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum odio eu feugiat pretium nibh ipsum consequat nisl vel pretium lectus quam id leo in vitae turpis massa sed elementum tempus egestas sed sed risus pretium quam vulputate dignissim suspendisse in est ante in nibh mauris cursus mattis molestie a iaculis at erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet nulla facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis''';

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
