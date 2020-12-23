import 'package:bloc_test/bloc_test.dart';
import 'package:test/test.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';

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
        // ignore: lines_longer_than_80_chars
        "The Bloc should yield CoreDatabaseState.chapterDraftDeletedFromLibrarySTE(chapterDraftUID: '123456') when CoreDastabaseEvent.chapterDraftDeletedFromLibraryEVT(chapterDraftUID: '123456') event is called",
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
    },
  );
}
