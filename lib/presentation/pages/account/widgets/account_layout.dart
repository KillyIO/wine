import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time/time.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/presentation/pages/account/widgets/my_chapters_layout.dart';
import 'package:wine/presentation/pages/account/widgets/my_series_layout.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar_button.dart';
import 'package:wine/utils/palettes.dart';

class AccountLayout extends StatefulWidget {
  @override
  _AccountLayoutState createState() => _AccountLayoutState();
}

class _AccountLayoutState extends State<AccountLayout>
    with TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 1000);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  final List<Color> pageViewNavbarColors = <Color>[
    Palettes.pastelYellow,
    Palettes.pastelPink,
  ];

  final List<Widget> pageViewLayouts = <Widget>[
    MySeriesLayout(),
    MyChaptersLayout(),
  ];

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
                  AnimatedContainer(
                    duration: 100.milliseconds,
                    height: 30.0,
                    width: MediaQuery.of(context).size.width,
                    color: pageViewNavbarColors[acNavState.currentPageViewIdx],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: acNavState.pageViewNavbarItems
                          .asMap()
                          .entries
                          .map((entry) {
                        final int index = entry.key;
                        final String value = entry.value;

                        return WINEHorizontalNavbarButton(
                          title: value,
                          color: acNavState.currentPageViewIdx == index
                              ? Colors.black
                              : Colors.black12,
                          onPressed: () => _pageController.animateToPage(
                            index == 0 ? 1000 : 1001,
                            duration: 200.milliseconds,
                            curve: Curves.linear,
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      itemBuilder: (BuildContext context, int index) =>
                          pageViewLayouts[index % pageViewLayouts.length],
                      onPageChanged: (int index) => context
                          .bloc<AccountNavigationBloc>()
                          .add(AccountNavigationEvent.pageViewIndexChanged(
                            index: index % pageViewLayouts.length,
                          )),
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
