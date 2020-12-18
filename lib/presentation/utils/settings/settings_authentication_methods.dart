import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';

/// @nodoc
class SettingsAuthenticationMethods {
  /// @nodoc
  SettingsAuthenticationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void signOutPressed() => context
      .read<SettingsAuthenticationBloc>()
      .add(const SettingsAuthenticationEvent.signOutPressedEVT());
}
