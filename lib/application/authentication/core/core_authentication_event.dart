part of 'core_authentication_bloc.dart';

@freezed
abstract class CoreAuthenticationEvent with _$CoreAuthenticationEvent {
  const factory CoreAuthenticationEvent.pageLaunched() = PageLaunched;
}
