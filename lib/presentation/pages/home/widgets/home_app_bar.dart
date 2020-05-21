import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/home/widgets/animated_icon_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isDrawerOpen;
  final bool isNewSeriesPageOpen;

  @override
  final Size preferredSize;

  const HomeAppBar({
    Key key,
    @required this.isDrawerOpen,
    @required this.isNewSeriesPageOpen,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  }) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  void _newSeriesIconPressed() => context
      .bloc<HomeNavigationBloc>()
      .add(const HomeNavigationEvent.newSeriesIconPressed(
        isNewSeriesPageOpen: true,
      ));

  void _drawerIconPressed() {
    context
        .bloc<HomeNavigationBloc>()
        .add(HomeNavigationEvent.drawerIconPressed(
          isDrawerOpen: widget.isDrawerOpen,
        ));
    sailor(Constants.homeDrawerRoute);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
      builder: (context, coreState) {
        return AppBar(
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 15.0),
            child: WINELeadingImageButton(
              imagePath: 'assets/img/filters.png',
              onPressed: () => sailor(Constants.homeFiltersRoute),
            ),
          ),
          actions: <Widget>[
            if (coreState.isAnonymous)
              Container()
            else
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: AnimatedIconButton(
                  animation: widget.isNewSeriesPageOpen ? 'create' : 'dismiss',
                  filename: 'assets/animation/new_series.flr',
                  height: 20.0,
                  onPressed: _newSeriesIconPressed,
                  width: 20.0,
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: AnimatedIconButton(
                animation: Scaffold.of(context).isEndDrawerOpen
                    ? 'menu_to_x'
                    : 'x_to_menu',
                filename: 'assets/animation/menu.flr',
                height: 20.0,
                onPressed: _drawerIconPressed,
                width: 20.0,
              ),
            ),
          ],
        );
      },
    );
  }
}
