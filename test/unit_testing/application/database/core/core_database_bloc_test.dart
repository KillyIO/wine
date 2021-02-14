import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:test/test.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/series.dart';

void main() {
  group(
    'CoreDatabaseBloc',
    () {
      const faker = Faker();

      final authorUID = faker.guid.guid();

      final chapterUID = faker.guid.guid();
      final seriesUID = faker.guid.guid();

      final chapter = Chapter(
        authorUID: authorUID,
        copyrights: 'cc-by',
        coverURL:
            'https://firebasestorage.googleapis.com/v0/b/wine-dev-1db0c.appspot.com/o/placeholders%2Fbook_placeholder_pastel_yellow.png?alt=media&token=3ab84d84-829f-4d39-9ed6-698694e87abd',
        createdAt: 1608807831084,
        genre: 'comedy',
        genreOptional: 'romance',
        index: 1,
        isLastChapter: true,
        isNSFW: false,
        language: 'en',
        previousChapterUID: null,
        seriesUID: seriesUID,
        story: 'story',
        title: 'diam vulputate',
        uid: chapterUID,
        updatedAt: 1608807831084,
      );

      final series = Series(
        authorUID: authorUID,
        coverURL:
            'https://firebasestorage.googleapis.com/v0/b/wine-dev-1db0c.appspot.com/o/placeholders%2Fbook_placeholder_pastel_yellow.png?alt=media&token=3ab84d84-829f-4d39-9ed6-698694e87abd',
        createdAt: 1608326693128,
        genre: 'action',
        genreOptional: null,
        isNSFW: false,
        language: 'en',
        subtitle: null,
        summary: 'summary',
        title: 'integer vitae',
        uid: seriesUID,
        updatedAt: 1608326693128,
      );

      CoreDatabaseBloc coreDatabaseBloc;

      setUp(() {
        coreDatabaseBloc = CoreDatabaseBloc();
      });

      tearDown(() {
        coreDatabaseBloc.close();
      });

      // SECTION: initial
      test(
        '''
        Given CoreDatabaseBloc
        When the Bloc is created
        Then the initial state is initial()
        ''',
        () {
          expect(coreDatabaseBloc.state, const CoreDatabaseState.initial());
        },
      );

      // SECTION: chapterDraftDeletedFromLibraryEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When chapterDraftDeletedFromLibraryEvent(chapterDraftUID) is called
        Then chapterDraftDeletedFromLibraryState(chapterDraftUID) is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterDraftDeletedFromLibraryEvent(
            chapterDraftUID: chapter.uid,
          ),
        ),
        expect: [
          CoreDatabaseState.chapterDraftDeletedFromLibraryState(
            chapterDraftUID: chapter.uid,
          ),
        ],
      );

      blocTest(
        '''
        Given CoreDatabaseBloc
        When chapterDraftDeletedFromLibraryEvent(seriesDraftUID) is called
        Then chapterDraftDeletedFromLibraryState(seriesDraftUID) is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterDraftDeletedFromLibraryEvent(
            seriesDraftUID: series.uid,
          ),
        ),
        expect: [
          CoreDatabaseState.chapterDraftDeletedFromLibraryState(
            seriesDraftUID: series.uid,
          ),
        ],
      );

      // SECTION: chapterDraftSavedFromLibraryEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When chapterDraftSavedFromLibraryEvent() is called
        Then chapterDraftSavedFromLibraryState() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterDraftSavedFromLibraryEvent(chapter),
        ),
        expect: [CoreDatabaseState.chapterDraftSavedFromLibraryState(chapter)],
      );

      // SECTION: chapterPublishedFromChapterEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When chapterPublishedFromChapterEvent() is called
        Then chapterPublishedFromChapterState() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterPublishedFromChapterEvent(chapter),
        ),
        expect: [CoreDatabaseState.chapterPublishedFromChapterState(chapter)],
      );

      // SECTION: chapterPublishedFromLibraryEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When chapterPublishedFromLibraryEvent() is called
        Then chapterPublishedFromLibraryState() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterPublishedFromLibraryEvent(chapter),
        ),
        expect: [CoreDatabaseState.chapterPublishedFromLibraryState(chapter)],
      );

      // SECTION: resetBlocEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When resetBlocEvent() is called
        Then initial() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(const CoreDatabaseEvent.resetBlocEvent()),
        expect: [const CoreDatabaseState.initial()],
      );

      // SECTION: seriesDraftDeletedFromLibraryEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When seriesDraftDeletedFromLibraryEvent() is called
        Then seriesDraftDeletedFromLibraryState() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesDraftDeletedFromLibraryEvent(series.uid),
        ),
        expect: [
          CoreDatabaseState.seriesDraftDeletedFromLibraryState(series.uid),
        ],
      );

      // SECTION: seriesDraftSavedFromLibraryEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When seriesDraftSavedFromLibraryEvent() is called
        Then seriesDraftSavedFromLibraryState() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesDraftSavedFromLibraryEvent(series),
        ),
        expect: [CoreDatabaseState.seriesDraftSavedFromLibraryState(series)],
      );

      // SECTION: seriesPublishedFromHomeEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When seriesPublishedFromHomeEvent() is called
        Then seriesPublishedFromHomeState() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesPublishedFromHomeEvent(series),
        ),
        expect: [CoreDatabaseState.seriesPublishedFromHomeState(series)],
      );

      // SECTION: seriesPublishedFromLibraryEvent
      blocTest(
        '''
        Given CoreDatabaseBloc
        When seriesPublishedFromLibraryEvent() is called
        Then seriesPublishedFromLibraryState() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesPublishedFromLibraryEvent(series),
        ),
        expect: [CoreDatabaseState.seriesPublishedFromLibraryState(series)],
      );
    },
  );
}
