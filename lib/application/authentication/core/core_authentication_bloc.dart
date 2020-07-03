import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'core_authentication_bloc.freezed.dart';
part 'core_authentication_event.dart';
part 'core_authentication_state.dart';

@injectable
class CoreAuthenticationBloc extends Bloc<CoreAuthenticationEvent, CoreAuthenticationState> {
  final IAuthenticationFacade _authenticationFacade;

  CoreAuthenticationBloc(this._authenticationFacade) : super(CoreAuthenticationState.initial());

  @override
  Stream<CoreAuthenticationState> mapEventToState(CoreAuthenticationEvent event) async* {
    yield* event.map(
      appLaunchedEVT: (event) async* {
        final bool isAnonymous = await _authenticationFacade.isAnonymous();

        yield state.copyWith(isAnonymous: isAnonymous);
      },
      userStatusChangedEVT: (event) async* {
        final bool isAnonymous = await _authenticationFacade.isAnonymous();

        yield state.copyWith(isAnonymous: isAnonymous);
      },
    );
  }
}
