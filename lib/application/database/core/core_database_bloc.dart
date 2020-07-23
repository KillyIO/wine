import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'core_database_event.dart';
part 'core_database_state.dart';

part 'core_database_bloc.freezed.dart';

@injectable
class CoreDatabaseBloc extends Bloc<CoreDatabaseEvent, CoreDatabaseState> {
  CoreDatabaseBloc() : super(CoreDatabaseState.initial());

  @override
  Stream<CoreDatabaseState> mapEventToState(CoreDatabaseEvent event) async* {
    yield* event.map(
      publishedFromAccountEVT: (event) async* {
        final bool publishedFromAccount = !state.publishedFromAccount;
        yield state.copyWith(publishedFromAccount: publishedFromAccount);
      },
      publishedFromChapterEVT: (event) async* {
        final bool publishedFromChapter = !state.publishedFromChapter;
        yield state.copyWith(publishedFromChapter: publishedFromChapter);
      },
      publishedFromHomeEVT: (event) async* {
        final bool publishedFromHome = !state.publishedFromHome;
        yield state.copyWith(publishedFromHome: publishedFromHome);
      },
    );
  }
}
