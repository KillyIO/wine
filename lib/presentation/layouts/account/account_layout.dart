import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/utils/account/account_database_methods.dart';
import 'package:wine/presentation/utils/account/account_navigation_methods.dart';
import 'package:wine/presentation/layouts/account/account_my_chapters_layout.dart';
import 'package:wine/presentation/layouts/account/account_my_series_layout.dart';
import 'package:wine/presentation/widgets/account/account_page_view_builder.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';
import 'package:wine/utils/getters.dart';
import 'package:wine/utils/palettes.dart';

/// @nodoc
class AccountLayout extends StatefulWidget {
  @override
  _AccountLayoutState createState() => _AccountLayoutState();
}

class _AccountLayoutState extends State<AccountLayout>
    with Getters, TickerProviderStateMixin {
  // final AccountListeners _accountListeners = AccountListeners();
  final PageController _pageController = PageController(initialPage: 1000);

  AccountDatabaseMethods _accountDatabaseMethods;
  AccountNavigationMethods _accountNavigationMethods;
  List<Widget> _pageViewLayouts;

  @override
  void initState() {
    super.initState();
    _accountDatabaseMethods = AccountDatabaseMethods(context);
    _accountNavigationMethods = AccountNavigationMethods(context);

    _pageViewLayouts = <Widget>[
      AccountMySeriesLayout(
        accountDatabaseMethods: _accountDatabaseMethods,
        accountNavigationMethods: _accountNavigationMethods,
      ),
      AccountMyChaptersLayout(
        accountDatabaseMethods: _accountDatabaseMethods,
        accountNavigationMethods: _accountNavigationMethods,
      ),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              BlocBuilder<AccountNavigationBloc, AccountNavigationState>(
                builder: (context, accountNavigationState) {
                  return WINEHorizontalNavbar(
                    pageController: _pageController,
                    pageViewNavbarItems: accountNavbarItemsKeys,
                    currentPageViewIdx:
                        accountNavigationState.currentPageViewIdx,
                    pageViewNavbarColors: const <Color>[
                      Palettes.pastelBlue,
                      Palettes.pastelYellow,
                      Palettes.pastelPink,
                    ],
                  );
                },
              ),
              AccountPageViewBuilder(
                accountDatabaseMethods: _accountDatabaseMethods,
                accountNavigationMethods: _accountNavigationMethods,
                pageController: _pageController,
                pageViewLayouts: _pageViewLayouts,
              ),
            ],
          ),
          BlocBuilder<AccountDatabaseBloc, AccountDatabaseState>(
            builder: (context, accountDatabaseState) {
              return WINELoadingScreen(
                vsync: this,
                isLoading: accountDatabaseState.isLoading,
              );
            },
          ),
        ],
      ),
    );
  }
}
