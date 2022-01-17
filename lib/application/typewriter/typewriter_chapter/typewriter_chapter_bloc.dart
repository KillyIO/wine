import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';

part 'typewriter_chapter_event.dart';
part 'typewriter_chapter_state.dart';
part 'typewriter_chapter_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TypewriterChapterBloc
    extends Bloc<TypewriterChapterEvent, TypewriterChapterState> {
  /// @nodoc
  TypewriterChapterBloc() : super(TypewriterChapterState.initial()) {
    on<AddCoverPressed>((_, emit) {});
    on<DeleteButtonPressed>((_, emit) {});
    on<GenreAdded>((_, emit) {});
    on<GenreRemoved>((_, emit) {});
    on<IsNSFWChanged>((_, emit) {});
    on<LanguageSelected>((_, emit) {});
    on<LaunchAsNewChapter>((_, emit) {});
    on<LaunchWithID>((_, emit) {});
    on<LicenceSelected>((_, emit) {});
  }
}
