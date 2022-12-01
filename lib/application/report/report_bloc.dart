import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class ReportBloc extends Bloc<ReportEvent, ReportState> {
  /// @nodoc
  ReportBloc() : super(_Initial()) {
    on<ReportEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
