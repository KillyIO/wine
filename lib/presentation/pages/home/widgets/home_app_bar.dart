import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/pages/home/widgets/home_animated_icon_button.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  final HomeNavigationMethods homeNavMethods;
  final bool isDrawerOpen;

  @override
  final Size preferredSize;

  const HomeAppBar({
    Key key,
    @required this.homeNavMethods,
    @required this.isDrawerOpen,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  }) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
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
              onPressed: () => widget.homeNavMethods.openDrawer(isRight: false),
            ),
          ),
          actions: <Widget>[
            if (coreState.isAnonymous)
              Container()
            else
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: WINELeadingImageButton(
                  imagePath: 'assets/img/plus_button.png',
                  onPressed: () => ExtendedNavigator.root.pushNamed(Routes.newSeriesPage),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: HomeAnimatedIconButton(
                animation: Scaffold.of(context).isEndDrawerOpen ? 'menu_to_x' : 'x_to_menu',
                filename: 'assets/animation/menu.flr',
                height: 20.0,
                onPressed: () => widget.homeNavMethods.openDrawer(),
                width: 20.0,
              ),
            ),
          ],
        );
      },
    );
  }
}
