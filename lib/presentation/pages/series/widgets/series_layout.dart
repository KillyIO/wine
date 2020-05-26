import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/presentation/pages/series/widgets/genre_container.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/extensions.dart';
import 'package:wine/utils/palettes.dart';

class SeriesLayout extends StatefulWidget {
  final SeriesPageArgs args;

  const SeriesLayout({
    Key key,
    @required this.args,
  }) : super(key: key);

  @override
  _SeriesLayoutState createState() => _SeriesLayoutState();
}

class _SeriesLayoutState extends State<SeriesLayout> with AfterLayoutMixin {
  @override
  void afterFirstLayout(BuildContext context) {
    context
        .bloc<SeriesDatabaseBloc>()
        .add(SeriesDatabaseEvent.seriesPageLaunched(
          series: widget.args.series,
          context: context,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SeriesDatabaseBloc, SeriesDatabaseState>(
          listener: (context, state) {
            if (state.chapterOne.isNotEmptyOrNull) {}
          },
        ),
      ],
      child: BlocBuilder<SeriesDatabaseBloc, SeriesDatabaseState>(
        builder: (context, seriesDbState) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: AppBar(
                actions: <Widget>[
                  IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    icon: Icon(
                      seriesDbState.isLiked
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: seriesDbState.isLiked
                          ? Palettes.pastelPink
                          : Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () => context
                        .bloc<SeriesDatabaseBloc>()
                        .add(const SeriesDatabaseEvent.likeButtonPressed()),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    icon: Icon(
                      seriesDbState.isBookmarked
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: seriesDbState.isBookmarked
                          ? Palettes.pastelYellow
                          : Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () => context
                        .bloc<SeriesDatabaseBloc>()
                        .add(const SeriesDatabaseEvent.bookmarkButtonPressed()),
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
                          tag: widget.args.series.uid,
                          child: CachedNetworkImage(
                            fit: BoxFit.contain,
                            imageUrl:
                                widget.args.series.coverUrl.isNotEmptyOrNull
                                    ? widget.args.series.coverUrl
                                    : widget.args.placeholderUrl,
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
                                  widget.args.series.title,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(height: 7.5),
                                Text(
                                  widget.args.series.author?.username ??
                                      widget.args.username,
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
                                  color: Colors.black38,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  seriesDbState.viewsCount.toString(),
                                  style: TextStyle(
                                    color: Colors.black38,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Icon(
                                  Icons.favorite,
                                  color: Palettes.pastelPink,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  seriesDbState.likesCount.toString(),
                                  style: TextStyle(
                                    color: Palettes.pastelPink,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Icon(
                                  Icons.bookmark,
                                  color: Palettes.pastelYellow,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  seriesDbState.bookmarksCount.toString(),
                                  style: TextStyle(
                                    color: Palettes.pastelYellow,
                                  ),
                                ),
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
                      widget.args.series.summary,
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
                            seriesDbState.genresMap[widget.args.series.genre],
                      ),
                      const SizedBox(width: 15),
                      if (widget.args.series.genreOptional.isNotEmptyOrNull)
                        GenreContainer(
                          title: seriesDbState
                              .genresMap[widget.args.series.genreOptional],
                        ),
                      const SizedBox(width: 20),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: WINEButton(
                      title: 'READ FIRST CHAPTER',
                      onPressed: () => context.bloc<SeriesDatabaseBloc>().add(
                          const SeriesDatabaseEvent
                              .readChapterOneButtonPressed()),
                      fontSize: 18.0,
                      hasRoundedCorners: true,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
