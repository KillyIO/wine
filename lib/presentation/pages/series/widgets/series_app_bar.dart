import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';

import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/pages/series/utils/series_database_methods.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/palettes.dart';

class SeriesAppBar extends StatelessWidget {
  final SeriesDatabaseState seriesDbState;
  final SeriesDatabaseMethods methods;

  const SeriesAppBar({Key key, @required this.seriesDbState, @required this.methods}) : super(key: key);

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
                  seriesDbState.isLiked ? Icons.favorite : Icons.favorite_border,
                  color: seriesDbState.isLiked ? Palettes.pastelPink : Colors.black,
                  size: 30.0,
                ),
                onPressed: methods.likeButtonPressed,
              ),
            const SizedBox(width: 10),
            if (!coreAuthState.isAnonymous)
              IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                icon: Icon(
                  seriesDbState.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  color: seriesDbState.isBookmarked ? Palettes.pastelYellow : Colors.black,
                  size: 30.0,
                ),
                onPressed: methods.bookmarkButtonPressed,
              ),
            const SizedBox(width: 20),
          ],
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.0),
            child: Container(color: Colors.transparent, height: 2.0),
          ),
          brightness: Brightness.light,
          centerTitle: true,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: WINELeadingImageButton(
              imagePath: 'assets/img/back_button.png',
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        );
      },
    );
  }
}
