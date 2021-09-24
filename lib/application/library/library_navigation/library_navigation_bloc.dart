import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'library_navigation_event.dart';
part 'library_navigation_state.dart';
part 'library_navigation_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class LibraryNavigationBloc
    extends Bloc<LibraryNavigationEvent, LibraryNavigationState> {
  /// @nodoc
  LibraryNavigationBloc() : super(LibraryNavigationState.initial()) {
    on<PageViewIndexChanged>((value, emit) {});
    on<VerticalNavbarIndexChanged>((value, emit) {});
  }
}
