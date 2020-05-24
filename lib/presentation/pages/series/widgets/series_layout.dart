import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/pages/series/widgets/genre_container.dart';
import 'package:wine/presentation/widgets/wine_full_width_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/palettes.dart';

class SeriesLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeriesDatabaseBloc, SeriesDatabaseState>(
      builder: (context, seriesDbState) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(41.5),
            child: AppBar(
              actions: const <Widget>[
                Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                  size: 30.0,
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.black,
                  size: 30.0,
                ),
                SizedBox(width: 20),
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
                  imagePath: 'assets/img/back_button.png',
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Hero(
                        tag: seriesDbState.series.uid,
                        child: CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: seriesDbState.series.coverUrl != null &&
                                  seriesDbState.series.coverUrl.isNotEmpty
                              ? seriesDbState.series.coverUrl
                              : seriesDbState.placeholderUrl,
                          height: 125.0,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                      height: 125.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                seriesDbState.series.title,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 7.5),
                              Text(
                                seriesDbState.series.author?.username ??
                                    seriesDbState.username,
                                style: TextStyle(
                                    color: Colors.black26,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.visibility,
                                color: Colors.black,
                              ),
                              Icon(
                                Icons.bookmark,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Summary',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Show more',
                        style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    seriesDbState.series.summary,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    const SizedBox(width: 20),
                    GenreContainer(
                      title:
                          seriesDbState.genresMap[seriesDbState.series.genre],
                    ),
                    const SizedBox(width: 15),
                    if (seriesDbState.series.genreOptional.isNotEmpty)
                      GenreContainer(
                        title: seriesDbState
                            .genresMap[seriesDbState.series.genreOptional],
                      ),
                    const SizedBox(width: 20),
                  ],
                ),
                const SizedBox(height: 50),
                WINEFullWidthButton(
                  title: 'READ FIRST CHAPTER NOW',
                  onPressed: () {},
                  fontSize: 18.0,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
