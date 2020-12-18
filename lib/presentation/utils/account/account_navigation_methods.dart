import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/navigation/account/account_navigation_bloc.dart';

/// @nodoc
class AccountNavigationMethods {
  /// @nodoc
  AccountNavigationMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void pageViewIndexChanged(int index, int pages) => context
      .read<AccountNavigationBloc>()
      .add(AccountNavigationEvent.pageViewIndexChangedEVT(index % pages));

  /// @nodoc
  void verticalNavbarIndexChanged(int index) => context
      .read<AccountNavigationBloc>()
      .add(AccountNavigationEvent.verticalNavbarIndexChangedEVT(index));
}
