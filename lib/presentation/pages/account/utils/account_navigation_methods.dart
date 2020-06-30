import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/navigation/account/account_navigation_bloc.dart';

class AccountNavigationMethods {
  final BuildContext context;

  AccountNavigationMethods(this.context);

  void pageViewIndexChanged(int index, int pages) =>
      context.bloc<AccountNavigationBloc>().add(AccountNavigationEvent.pageViewIndexChangedEVT(index % pages));

  void verticalNavbarIndexChanged(int index) =>
      context.bloc<AccountNavigationBloc>().add(AccountNavigationEvent.verticalNavbarIndexChangedEVT(index));
}
