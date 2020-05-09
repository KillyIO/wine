import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'core_authentication_event.dart';
part 'core_authentication_state.dart';

part 'core_authentication_bloc.freezed.dart';

@injectable
class CoreAuthenticationBloc
    extends Bloc<CoreAuthenticationEvent, CoreAuthenticationState> {
  final IAuthenticationFacade _authenticationFacade;

  CoreAuthenticationBloc(this._authenticationFacade);

  @override
  CoreAuthenticationState get initialState => CoreAuthenticationState.initial();

  @override
  Stream<CoreAuthenticationState> mapEventToState(
    CoreAuthenticationEvent event,
  ) async* {
    if (event is GetUserAnonymousStatus) {
      final isAnonymous = await _authenticationFacade.isAnonymous();
      yield state.copyWith(
        isAnonymous: isAnonymous,
      );
    }
  }
}
