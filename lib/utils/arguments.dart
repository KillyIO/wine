import 'package:flutter/foundation.dart';
import 'package:sailor/sailor.dart';

import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/series.dart';

class NewSeriesPageArgs extends BaseArguments {
  final SeriesDraft seriesDraft;
  final String routeBack;

  NewSeriesPageArgs({
    this.seriesDraft,
    @required this.routeBack,
  });
}

/// [chapterDraft] not null only when editing a chapter not published
/// [seriesDraft] only if [parentType] is series, not null only if writing first chapter
/// [previousChapter] only when writing next chapter
class NewChapterPageArgs extends BaseArguments {
  final ChapterDraft chapterDraft;
  final SeriesDraft seriesDraft;
  final Chapter previousChapter;
  final String routeBack;
  final String predicateRoute;

  NewChapterPageArgs({
    this.chapterDraft,
    this.seriesDraft,
    this.previousChapter,
    @required this.routeBack,
    this.predicateRoute,
  });
}

class SeriesPageArgs extends BaseArguments {
  final Series series;

  SeriesPageArgs({@required this.series});
}

class ChapterPageArgs extends BaseArguments {
  final Chapter chapter;
  final String predicateRoute;

  ChapterPageArgs({
    @required this.chapter,
    @required this.predicateRoute,
  });
}
