import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/series.dart';

void main() {
  group(
    'CoreDatabaseBloc',
    () {
      CoreDatabaseBloc coreDatabaseBloc;
      final chapter = Chapter(
        authorUID: 'IhyAvFOnGegIFDBJYmL30nAbWu92',
        authorUsername: 'oncefilo',
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
        seriesUID: '58ed5de4-5d61-423b-bfe5-536b326c283a',
        story: 'story',
        title: 'diam vulputate',
        uid: '29616ca3-d403-427c-8cfa-c29d977cc8e0',
        updatedAt: 1608807831084,
      );

      final series = Series(
        authorUID: 'IhyAvFOnGegIFDBJYmL30nAbWu92',
        authorUsername: 'oncefilo',
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
        uid: '4ee028bd-b819-48f3-b704-59ac275d2d7c',
        updatedAt: 1608326693128,
      );

      setUp(() {
        coreDatabaseBloc = CoreDatabaseBloc();
      });

      tearDown(() {
        coreDatabaseBloc.close();
      });

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

      blocTest(
        '''
        Given CoreDatabaseBloc
        When resetBlocEVT() is called
        Then initial() is yielded
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(const CoreDatabaseEvent.resetBlocEvent()),
        expect: [const CoreDatabaseState.initial()],
      );

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
