import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

/// @nodoc
@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
/// @nodoc
  SplashBloc() : super(const SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      authenticated: (value) async* {},
    );
  }
}
