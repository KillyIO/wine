import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/pages/account/utils/account_navigation_methods.dart';
import 'package:wine/presentation/pages/account/widgets/account_my_published_series_layout.dart';
import 'package:wine/presentation/pages/account/widgets/account_my_series_drafts_layout.dart';
import 'package:wine/presentation/pages/account/widgets/account_vertical_navbar.dart';

class AccountMySeriesLayout extends StatelessWidget {
  final AccountNavigationMethods acNavMethods;

  AccountMySeriesLayout({Key key, @required this.acNavMethods}) : super(key: key);

  final List<Widget> contentLayouts = <Widget>[AccountMyPublishedSeriesLayout(), AccountMySeriesDraftsLayout()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
      builder: (context, acNavState) {
        return Row(
          children: <Widget>[
            AccountVerticalNavbar(
              acNavMethods: acNavMethods,
              items: acNavState.verticalNavbarItems,
              currentIndex: acNavState.currentVerticalNavbarIdx,
              width: MediaQuery.of(context).size.width / 5,
            ),
            Expanded(child: contentLayouts[acNavState.currentVerticalNavbarIdx]),
            const SizedBox(width: 15),
          ],
        );
      },
    );
  }
}
