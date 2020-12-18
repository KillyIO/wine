import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';

import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/layouts/account/account_base_series_layout.dart';
import 'package:wine/presentation/utils/account/account_database_methods.dart';
import 'package:wine/presentation/utils/account/account_navigation_methods.dart';
import 'package:wine/presentation/widgets/account/account_vertical_navbar.dart';
import 'package:wine/utils/getters.dart';

/// @nodoc
class AccountMySeriesLayout extends StatelessWidget with Getters {
  /// @nodoc
  AccountMySeriesLayout({
    Key key,
    @required this.accountDatabaseMethods,
    @required this.accountNavigationMethods,
  }) : super(key: key);

  /// @nodoc
  final AccountDatabaseMethods accountDatabaseMethods;

  /// @nodoc
  final AccountNavigationMethods accountNavigationMethods;

  List<Series> _getSeries(AccountDatabaseState state, String type) {
    switch (type) {
      case 'published':
        return state.seriesList;
      case 'drafts':
        return state.seriesDrafts;
      case 'bookmarked':
        return state.bookmarkedSeriesList;
      default:
        return <Series>[];
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
      builder: (context, accountNavigationState) {
        return Row(
          children: <Widget>[
            AccountVerticalNavbar(
              accountDatabaseMethods: accountDatabaseMethods,
              accountNavigationMethods: accountNavigationMethods,
              items: accountVerticalNavbarItemsKeys,
              currentIndex: accountNavigationState.currentVerticalNavbarIdx,
              width: MediaQuery.of(context).size.width / 5,
            ),
            Expanded(
              child: BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
                builder: (context, accountDatabaseState) {
                  return AccountBaseSeriesLayout(
                    seriesList: _getSeries(
                      accountDatabaseState,
                      accountLayoutsContentType[
                          accountNavigationState.currentVerticalNavbarIdx],
                    ),
                    isDraft: accountLayoutsContentType[
                            accountNavigationState.currentVerticalNavbarIdx] ==
                        'drafts',
                  );
                },
              ),
            ),
            const SizedBox(width: 15),
          ],
        );
      },
    );
  }
}
