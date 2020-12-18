import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/presentation/utils/home/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/home/home_animated_icon_button.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  /// @nodoc
  const HomeAppBar({
    Key key,
    @required this.homeNavigationMethods,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  }) : super(key: key);

  /// @nodoc
  final HomeNavigationMethods homeNavigationMethods;

  @override
  final Size preferredSize;

  @override
  _HomeAppBarState createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      brightness: Brightness.light,
      elevation: 0.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 15.0),
        child: WINELeadingImageButton(
          imagePath: Assets.filtersIcon,
          onPressed: () =>
              widget.homeNavigationMethods.toggleDrawer(isRight: false),
        ),
      ),
      actions: <Widget>[
        BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
          builder: (context, coreAuthenticationState) {
            if (!coreAuthenticationState.isAnonymous) {
              return Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: WINELeadingImageButton(
                  imagePath: Assets.plusIcon,
                  onPressed: () async => ExtendedNavigator.root.push(
                    Routes.seriesEditorPage,
                    arguments: SeriesEditorPageArguments(
                      editorContentOrigin: EditorContentOrigin.home,
                    ),
                  ),
                ),
              );
            }
            return Container();
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: HomeAnimatedIconButton(
            animation: Scaffold.of(context).isEndDrawerOpen
                ? 'menu_to_x'
                : 'x_to_menu',
            filename: Assets.menuAnimation,
            height: 20.0,
            onPressed: widget.homeNavigationMethods.toggleDrawer,
            width: 20.0,
          ),
        ),
      ],
    );
  }
}
