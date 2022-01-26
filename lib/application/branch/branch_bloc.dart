import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'branch_event.dart';
part 'branch_state.dart';
part 'branch_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class BranchBloc extends Bloc<BranchEvent, BranchState> {
  /// @nodoc
  BranchBloc() : super(_Initial()) {
    on<BranchEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
