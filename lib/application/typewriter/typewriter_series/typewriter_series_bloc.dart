import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';

part 'typewriter_series_event.dart';
part 'typewriter_series_state.dart';
part 'typewriter_series_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TypewriterSeriesBloc
    extends Bloc<TypewriterSeriesEvent, TypewriterSeriesState> {
  /// @nodoc
  TypewriterSeriesBloc(this._sessionsRepository)
      : super(TypewriterSeriesState.initial());

  final ISessionsRepository _sessionsRepository;

  @override
  Stream<TypewriterSeriesState> mapEventToState(
    TypewriterSeriesEvent event,
  ) async* {
    yield* event.map(
      addCoverPressed: (_) async* {},
      isNSFWChanged: (value) async* {},
      languageSelected: (value) async* {},
      launchAsNewSeries: (_) async* {},
      launchWithID: (value) async* {},
    );
  }
}
