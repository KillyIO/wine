import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';

class SettingsAuthenticationMethods {
  final BuildContext context;

  SettingsAuthenticationMethods(this.context);

  void signOutPressed() =>
      context.bloc<SettingsAuthenticationBloc>().add(const SettingsAuthenticationEvent.signOutPressedEVT());
}
