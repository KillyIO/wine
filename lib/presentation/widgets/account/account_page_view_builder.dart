import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/utils/account/account_database_methods.dart';
import 'package:wine/presentation/utils/account/account_navigation_methods.dart';

/// @nodoc
class AccountPageViewBuilder extends StatelessWidget {
  /// @nodoc
  AccountPageViewBuilder({
    Key key,
    @required this.accountDatabaseMethods,
    @required this.accountNavigationMethods,
    @required this.pageController,
    @required this.pageViewLayouts,
  }) : super(key: key);

  /// @nodoc
  final AccountDatabaseMethods accountDatabaseMethods;

  /// @nodoc
  final AccountNavigationMethods accountNavigationMethods;

  /// @nodoc
  final PageController pageController;

  /// @nodoc
  final List<Widget> pageViewLayouts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
        builder: (context, accountNavigationState) {
          return PageView.builder(
            controller: pageController,
            itemBuilder: (BuildContext context, int index) =>
                pageViewLayouts[index % pageViewLayouts.length],
            onPageChanged: (int index) {
              accountDatabaseMethods.pageViewIndexChanged(
                index,
                pageViewLayouts.length,
                accountNavigationState.currentVerticalNavbarIdx,
              );
              accountNavigationMethods.pageViewIndexChanged(
                index,
                pageViewLayouts.length,
              );
            },
          );
        },
      ),
    );
  }
}
