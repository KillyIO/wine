import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/utils/account/account_database_methods.dart';

import 'package:wine/presentation/utils/account/account_navigation_methods.dart';
import 'package:wine/presentation/widgets/wine_vertical_navbar_button.dart';

/// @nodoc
class AccountVerticalNavbar extends StatelessWidget {
  /// @nodoc
  const AccountVerticalNavbar({
    Key key,
    @required this.accountDatabaseMethods,
    @required this.accountNavigationMethods,
    @required this.currentIndex,
    @required this.items,
    @required this.width,
  }) : super(key: key);

  /// @nodoc
  final AccountDatabaseMethods accountDatabaseMethods;

  /// @nodoc
  final AccountNavigationMethods accountNavigationMethods;

  /// @nodoc
  final double width;

  /// @nodoc
  final int currentIndex;

  /// @nodoc
  final List<String> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: items.asMap().entries.map((entry) {
            final index = entry.key;
            final value = entry.value;

            return Padding(
              padding: EdgeInsets.only(
                top: index == 0 ? 20.0 : 0.0,
                bottom: 20.0,
              ),
              child: BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
                builder: (context, accountNavigationState) {
                  return WINEVerticalNavbarButton(
                    title: value,
                    onPressed: () {
                      accountDatabaseMethods.verticalNavbarIndexChanged(
                        index,
                        accountNavigationState.currentPageViewIdx,
                      );
                      accountNavigationMethods
                          .verticalNavbarIndexChanged(index);
                    },
                    color:
                        currentIndex == index ? Colors.black : Colors.black12,
                    width: width,
                  );
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
