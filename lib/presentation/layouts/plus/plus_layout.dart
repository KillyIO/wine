import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/plus/plus_banner.dart';
import 'package:wine/presentation/widgets/plus/plus_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class PlusLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(41.5),
        child: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(color: Colors.black, height: 2.0),
          ),
          brightness: Brightness.light,
          centerTitle: true,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 5.0,
            ),
            child: WINELeadingImageButton(
              imagePath: Assets.backIcon,
              onPressed: () async => ExtendedNavigator.root.pop(),
            ),
          ),
          title: const Text(
            'PLUS',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          PlusBanner(),
          BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
            builder: (context, coreAuthenticationstate) {
              return PlusButton(
                isFirst: true,
                leadingIconData: Icons.collections_bookmark_outlined,
                title: 'LIBRARY',
                trailingIconData: Icons.keyboard_arrow_right,
                onPressed: coreAuthenticationstate.isAnonymous
                    ? () async => ExtendedNavigator.root.push(Routes.signInPage)
                    : () async =>
                        ExtendedNavigator.root.push(Routes.libraryPage),
              );
            },
          ),
          PlusButton(
            leadingIconData: Feather.settings,
            title: 'SETTINGS',
            trailingIconData: Icons.keyboard_arrow_right,
            onPressed: () async =>
                ExtendedNavigator.root.push(Routes.settingsPage),
          ),
          PlusButton(
            leadingIconData: Feather.info,
            title: 'ABOUT',
            trailingIconData: Icons.keyboard_arrow_right,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
