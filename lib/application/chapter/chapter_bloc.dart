import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chapter_event.dart';
part 'chapter_state.dart';
part 'chapter_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class ChapterBloc extends Bloc<ChapterEvent, ChapterState> {
  /// @nodoc
  ChapterBloc() : super(_Initial()) {
    on<ChapterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
