import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'report_event.application.dart';
part 'report_state.application.dart';
part 'report_bloc.application.freezed.dart';

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
