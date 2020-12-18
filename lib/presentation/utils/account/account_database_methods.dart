import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class AccountDatabaseMethods with Getters {
  /// @nodoc
  AccountDatabaseMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void pageViewIndexChanged(int index, int pages, int verticalNavbarIndex) =>
      context.read<AccountDatabaseBloc>().add(
          accountPageViewOrVerticalNavbarIndexEvents[index % pages]
              [verticalNavbarIndex]);

  /// @nodoc
  void verticalNavbarIndexChanged(int index, int pageViewIndex) => context
      .read<AccountDatabaseBloc>()
      .add(accountPageViewOrVerticalNavbarIndexEvents[pageViewIndex][index]);
}
