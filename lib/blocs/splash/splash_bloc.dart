import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wine/models/session.dart';
import 'package:wine/models/session_member.dart';
import 'package:wine/models/user.dart';
import 'package:wine/repositories/authentication_repository.dart';
import 'package:wine/repositories/local_storage_repository.dart';
import 'package:wine/repositories/user_repository.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final AuthenticationRepository _authenticationRepository =
      AuthenticationRepository();
  final LocalStorageRepository _localStorageRepository =
      LocalStorageRepository();
  final UserRepository _userRepository = UserRepository();

  @override
  SplashState get initialState => SplashInitial();

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    if (event is EVTOnLogoAnimationFinished) {
      yield* _mapOnLogoAnimationFinishedToState();
    }
  }

  Stream<SplashState> _mapOnLogoAnimationFinishedToState() async* {
    try {
      final bool isSignedIn = await _authenticationRepository?.isSignedIn();

      if (isSignedIn == true) {
        final Session session = _localStorageRepository?.getSession();
        if (session.isAnonymous == true) {
          yield STENavigating(route: '/home');
          yield STENavigated();
        } else {
          final bool isAccountComplete =
              await _userRepository?.isAccountComplete(session.uid);
          if (isAccountComplete == true) {
            final User user = await _userRepository.getUser(session.uid);
            await _localStorageRepository?.setSession(user.toSession());
            await _localStorageRepository?.setSessionData(
                SessionMember.is_anonymous, false);
            yield STENavigating(route: '/home');
            yield STENavigated();
          } else {
            yield STENavigating(route: '/account/complete');
            yield STENavigated();
          }
        }
      } else {
        await Future.wait([
          _authenticationRepository?.signInAnonymously(),
          _localStorageRepository?.setSessionData(
              SessionMember.is_anonymous, true),
        ]);
        yield* _mapOnLogoAnimationFinishedToState();
      }
    } catch (error) {
      yield STESplashError(error: error);
    }
  }
}
