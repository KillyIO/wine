import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/user/user.dart';

part 'series_event.dart';
part 'series_state.dart';
part 'series_bloc.freezed.dart';

/// @nodoc
class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  /// @nodoc
  SeriesBloc() : super(SeriesState.initial()) {
    on<SeriesEvent>((event, emit) {
      
    });
  }
}
