import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/library/library_navigation/library_navigation_bloc.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'library_event.dart';
part 'library_state.dart';
part 'library_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  /// @nodoc
  LibraryBloc(
    this._libraryNavigationBloc,
    this._sessionsRepository,
    this._userRepository,
  ) : super(LibraryState.initial()) {
    on<InitBloc>((value, emit) {
      _libraryNavigationBlocSubscription =
          _libraryNavigationBloc.stream.listen((libraryNavigationState) {
        switch (libraryNavigationState.currentPageViewIdx) {
          case 0:
            switch (libraryNavigationState.currentVerticalNavbarIdx) {
              case 0:
                break;
              case 1:
                break;
              default:
            }
            break;
          case 1:
            switch (libraryNavigationState.currentVerticalNavbarIdx) {
              case 0:
                break;
              case 1:
                break;
              default:
            }
            break;
          default:
        }
      });
    });
    on<SessionFetched>((value, emit) {});
  }

  // ignore: unused_field
  final ISessionsRepository _sessionsRepository;
  // ignore: unused_field
  final IUserRepository _userRepository;
  final LibraryNavigationBloc _libraryNavigationBloc;

  late StreamSubscription _libraryNavigationBlocSubscription;

  @override
  Future<void> close() {
    _libraryNavigationBlocSubscription.cancel();
    return super.close();
  }
}
