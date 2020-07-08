import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/pages/account/utils/account_database_methods.dart';
import 'package:wine/presentation/pages/account/utils/account_navigation_methods.dart';
import 'package:wine/presentation/pages/account/widgets/account_profile_layout.dart';
import 'package:wine/presentation/pages/account/widgets/account_my_chapters_layout.dart';
import 'package:wine/presentation/pages/account/widgets/account_my_series_layout.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar.dart';
import 'package:wine/utils/palettes.dart';

class AccountLayout extends StatefulWidget {
  @override
  _AccountLayoutState createState() => _AccountLayoutState();
}

class _AccountLayoutState extends State<AccountLayout> with TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 1002);
  AccountDatabaseMethods _acDbMethods;
  AccountNavigationMethods _acNavMethods;
  List<Widget> _pageViewLayouts;

  @override
  void initState() {
    super.initState();
    _acDbMethods = AccountDatabaseMethods(context);
    _acNavMethods = AccountNavigationMethods(context);
    _pageViewLayouts = <Widget>[
      AccountProfileLayout(),
      AccountMySeriesLayout(acNavMethods: _acNavMethods),
      AccountMyChaptersLayout(acNavMethods: _acNavMethods),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountDatabaseBloc, AccountDatabaseState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, acDbState) {
        return BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
          builder: (context, acNavState) {
            return SafeArea(
              child: Column(
                children: <Widget>[
                  WINEHorizontalNavbar(
                    pageController: _pageController,
                    pageViewNavbarItems: acNavState.pageViewNavbarItems,
                    currentPageViewIdx: acNavState.currentPageViewIdx,
                    pageViewNavbarColors: <Color>[Palettes.pastelBlue, Palettes.pastelYellow, Palettes.pastelPink],
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemBuilder: (BuildContext context, int index) =>
                          _pageViewLayouts[index % _pageViewLayouts.length],
                      onPageChanged: (int index) => _acNavMethods.pageViewIndexChanged(index, _pageViewLayouts.length),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
