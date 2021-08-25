part of 'library_bloc.dart';

/// @nodoc
@freezed
class LibraryEvent with _$LibraryEvent {
  /// @nodoc
  const factory LibraryEvent.initBloc() = InitBloc;

  /// @nodoc
  const factory LibraryEvent.sessionFetched(UniqueID uid) = SessionFetched;
}
