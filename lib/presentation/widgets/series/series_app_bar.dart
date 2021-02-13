import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/utils/series/series_database_methods.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/assets.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class SeriesAppBar extends StatelessWidget {
  /// @nodoc
  const SeriesAppBar({
    Key key,
    @required this.seriesDatabaseState,
    @required this.seriesDatabaseMethods,
  }) : super(key: key);

  /// @nodoc
  final SeriesDatabaseState seriesDatabaseState;

  /// @nodoc
  final SeriesDatabaseMethods seriesDatabaseMethods;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
      builder: (context, coreAuthState) {
        return AppBar(
          actions: <Widget>[
            if (!coreAuthState.isAnonymous)
              IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                icon: Icon(
                  seriesDatabaseState.isLiked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: seriesDatabaseState.isLiked
                      ? Palettes.pastelPink
                      : Colors.black,
                  size: 30.0,
                ),
                onPressed: seriesDatabaseMethods.likeButtonPressed,
              ),
            const SizedBox(width: 10),
            if (!coreAuthState.isAnonymous)
              IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                icon: Icon(
                  seriesDatabaseState.isBookmarked
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                  color: seriesDatabaseState.isBookmarked
                      ? Palettes.pastelYellow
                      : Colors.black,
                  size: 30.0,
                ),
                onPressed: seriesDatabaseMethods.bookmarkButtonPressed,
              ),
            const SizedBox(width: 20),
          ],
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(
              color: Colors.transparent,
              height: 2.0,
            ),
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
        );
      },
    );
  }
}
