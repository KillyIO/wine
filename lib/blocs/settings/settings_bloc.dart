import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:wine/repositories/authentication_repository.dart';
import 'package:wine/repositories/local_storage_repository.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final AuthenticationRepository _authenticationRepository =
      AuthenticationRepository();
  final LocalStorageRepository _localStorageRepository =
      LocalStorageRepository();

  @override
  SettingsState get initialState => SettingsInitial();

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    if (event is EVTOnLogOutClicked) {
      yield STELoggingOut();
      try {
        await Future.wait([
          _authenticationRepository?.signOut(),
          _localStorageRepository?.clearSession(),
        ]);
        yield STELoggedOut();
      } catch (error) {
        yield STESettingsError(error: error);
      }
    }
  }
}
