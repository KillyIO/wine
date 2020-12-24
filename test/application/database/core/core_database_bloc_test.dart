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

      setUp(() {
        coreDatabaseBloc = CoreDatabaseBloc();
      });

      tearDown(() {
        coreDatabaseBloc.close();
      });

      test(
        'The initial state of CoreDatabaseBloc is CoreDatabaseState.initial()',
        () {
          expect(coreDatabaseBloc.state, const CoreDatabaseState.initial());
        },
      );

      blocTest(
        """
        The Bloc should yield
        CoreDatabaseState.chapterDraftDeletedFromLibrarySTE(chapterDraftUID: '123456')
        when
        CoreDastabaseEvent.chapterDraftDeletedFromLibraryEVT(chapterDraftUID: '123456')
        event is called
        """,
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          const CoreDatabaseEvent.chapterDraftDeletedFromLibraryEVT(
            chapterDraftUID: '123456',
          ),
        ),
        expect: [
          const CoreDatabaseState.chapterDraftDeletedFromLibrarySTE(
            chapterDraftUID: '123456',
          ),
        ],
      );

      blocTest(
        """The Bloc should yield
        CoreDatabaseState.chapterDraftDeletedFromLibrarySTE(seriesDraftUID: '123456')
        when
        CoreDastabaseEvent.chapterDraftDeletedFromLibraryEVT(seriesDraftUID: '123456')
        event is called
        """,
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          const CoreDatabaseEvent.chapterDraftDeletedFromLibraryEVT(
            seriesDraftUID: '123456',
          ),
        ),
        expect: [
          const CoreDatabaseState.chapterDraftDeletedFromLibrarySTE(
            seriesDraftUID: '123456',
          ),
        ],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.chapterDraftSavedFromLibrarySTE(Chapter())
        when
        CoreDastabaseEvent.chapterDraftSavedFromLibraryEVT(Chapter())
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterDraftSavedFromLibraryEVT(Chapter()),
        ),
        expect: [CoreDatabaseState.chapterDraftSavedFromLibrarySTE(Chapter())],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.chapterDraftSavedFromLibrarySTE(Chapter(
          authorUID: '123456',
          seriesUID: '123456',
          uid: '123456',
        ))
        when
        CoreDatabaseEvent.chapterDraftSavedFromLibraryEVT(Chapter(
          authorUID: '123456',
          seriesUID: '123456',
          uid: '123456',
        ))
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterDraftSavedFromLibraryEVT(Chapter(
            authorUID: '123456',
            seriesUID: '123456',
            uid: '123456',
          )),
        ),
        expect: [
          CoreDatabaseState.chapterDraftSavedFromLibrarySTE(Chapter(
            authorUID: '123456',
            seriesUID: '123456',
            uid: '123456',
          )),
        ],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.chapterPublishedFromChapterSTE(Chapter())
        when
        CoreDastabaseEvent.chapterPublishedFromChapterEVT(Chapter())
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterPublishedFromChapterEVT(Chapter()),
        ),
        expect: [CoreDatabaseState.chapterPublishedFromChapterSTE(Chapter())],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.chapterPublishedFromChapterSTE(Chapter(
          authorUID: '123456',
          seriesUID: '123456',
          uid: '123456',
        ))
        when
        CoreDatabaseEvent.chapterPublishedFromChapterEVT(Chapter(
          authorUID: '123456',
          seriesUID: '123456',
          uid: '123456',
        ))
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterPublishedFromChapterEVT(Chapter(
            authorUID: '123456',
            seriesUID: '123456',
            uid: '123456',
          )),
        ),
        expect: [
          CoreDatabaseState.chapterPublishedFromChapterSTE(Chapter(
            authorUID: '123456',
            seriesUID: '123456',
            uid: '123456',
          )),
        ],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.chapterPublishedFromLibrarySTE(Chapter())
        when
        CoreDastabaseEvent.chapterPublishedFromLibraryEVT(Chapter())
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterPublishedFromLibraryEVT(Chapter()),
        ),
        expect: [CoreDatabaseState.chapterPublishedFromLibrarySTE(Chapter())],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.chapterPublishedFromLibrarySTE(Chapter(
          authorUID: '123456',
          seriesUID: '123456',
          uid: '123456',
        ))
        when
        CoreDatabaseEvent.chapterPublishedFromLibraryEVT(Chapter(
          authorUID: '123456',
          seriesUID: '123456',
          uid: '123456',
        ))
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.chapterPublishedFromLibraryEVT(Chapter(
            authorUID: '123456',
            seriesUID: '123456',
            uid: '123456',
          )),
        ),
        expect: [
          CoreDatabaseState.chapterPublishedFromLibrarySTE(Chapter(
            authorUID: '123456',
            seriesUID: '123456',
            uid: '123456',
          )),
        ],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.initial()
        when
        CoreDatabaseEvent.resetBlocEVT()
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(const CoreDatabaseEvent.resetBlocEVT()),
        expect: [const CoreDatabaseState.initial()],
      );

      blocTest(
        """
        The Bloc should yield
        CoreDatabaseState.seriesDraftDeletedFromLibrarySTE('123456')
        when
        CoreDastabaseEvent.seriesDraftDeletedFromLibraryEVT('123456')
        event is called
        """,
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          const CoreDatabaseEvent.seriesDraftDeletedFromLibraryEVT('123456'),
        ),
        expect: [
          const CoreDatabaseState.seriesDraftDeletedFromLibrarySTE('123456'),
        ],
      );
      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.seriesDraftSavedFromLibrarySTE(Series())
        when
        CoreDastabaseEvent.seriesDraftSavedFromLibraryEVT(Series())
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesDraftSavedFromLibraryEVT(Series()),
        ),
        expect: [CoreDatabaseState.seriesDraftSavedFromLibrarySTE(Series())],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.seriesDraftSavedFromLibrarySTE(Series(
          authorUID: '123456',
          uid: '123456',
        ))
        when
        CoreDatabaseEvent.seriesDraftSavedFromLibraryEVT(Chapter(
          authorUID: '123456',
          uid: '123456',
        ))
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesDraftSavedFromLibraryEVT(Series(
            authorUID: '123456',
            uid: '123456',
          )),
        ),
        expect: [
          CoreDatabaseState.seriesDraftSavedFromLibrarySTE(Series(
            authorUID: '123456',
            uid: '123456',
          )),
        ],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.seriesPublishedFromHomeSTE(Series())
        when
        CoreDastabaseEvent.seriesPublishedFromHomeEVT(Series())
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesPublishedFromHomeEVT(Series()),
        ),
        expect: [CoreDatabaseState.seriesPublishedFromHomeSTE(Series())],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.seriesPublishedFromHomeSTE(Series(
          authorUID: '123456',
          uid: '123456',
        ))
        when
        CoreDatabaseEvent.seriesPublishedFromHomeEVT(Series(
          authorUID: '123456',
          uid: '123456',
        ))
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesPublishedFromHomeEVT(Series(
            authorUID: '123456',
            uid: '123456',
          )),
        ),
        expect: [
          CoreDatabaseState.seriesPublishedFromHomeSTE(Series(
            authorUID: '123456',
            uid: '123456',
          )),
        ],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.seriesPublishedFromLibrarySTE(Series())
        when
        CoreDastabaseEvent.seriesPublishedFromLibraryEVT(Series())
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesPublishedFromLibraryEVT(Series()),
        ),
        expect: [CoreDatabaseState.seriesPublishedFromLibrarySTE(Series())],
      );

      blocTest(
        '''
        The Bloc should yield
        CoreDatabaseState.seriesPublishedFromLibrarySTE(Series(
          authorUID: '123456',
          uid: '123456',
        ))
        when
        CoreDatabaseEvent.seriesPublishedFromLibraryEVT(Series(
          authorUID: '123456',
          uid: '123456',
        ))
        event is called
        ''',
        build: () => coreDatabaseBloc,
        act: (bloc) => bloc.add(
          CoreDatabaseEvent.seriesPublishedFromLibraryEVT(Series(
            authorUID: '123456',
            uid: '123456',
          )),
        ),
        expect: [
          CoreDatabaseState.seriesPublishedFromLibrarySTE(Series(
            authorUID: '123456',
            uid: '123456',
          )),
        ],
      );
    },
  );
}
