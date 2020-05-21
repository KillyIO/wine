import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/pages/account/widgets/account_vertical_navbar.dart';
import 'package:wine/presentation/pages/account/widgets/my_published_series_layout.dart';
import 'package:wine/presentation/pages/account/widgets/my_series_drafts_layout.dart';

class MySeriesLayout extends StatelessWidget {
  final List<Widget> contentLayouts = <Widget>[
    MyPublishedSeriesLayout(),
    MySeriesDraftsLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
      builder: (context, acNavState) {
        return Row(
          children: <Widget>[
            AccountVerticalNavbar(
              items: acNavState.verticalNavbarItems,
              currentIndex: acNavState.currentVerticalNavbarIdx,
              width: MediaQuery.of(context).size.width / 5,
            ),
            Expanded(
              child: contentLayouts[acNavState.currentVerticalNavbarIdx],
            ),
            const SizedBox(width: 15),
          ],
        );
      },
    );
  }
}
