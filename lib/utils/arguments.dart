import 'package:flutter/foundation.dart';
import 'package:sailor/sailor.dart';

import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/series.dart';

class NewSeriesPageArgs extends BaseArguments {
  final SeriesDraft seriesDraft;

  NewSeriesPageArgs({
    this.seriesDraft,
  });
}

/// [chapterDraft] not null only when editing a chapter not published
/// [seriesDraft] only if [parentType] is series, not null only if writing first chapter
/// [previousChapter] only when writing next chapter
class NewChapterPageArgs extends BaseArguments {
  final ParentType parentType;
  final ChapterDraft chapterDraft;
  final SeriesDraft seriesDraft;
  final Chapter previousChapter;
  final String routeBack;
  final String predicateRoute;

  NewChapterPageArgs({
    @required this.parentType,
    this.chapterDraft,
    this.seriesDraft,
    this.previousChapter,
    @required this.routeBack,
    this.predicateRoute,
  });
}

class SeriesPageArgs extends BaseArguments {
  final Series series;

  SeriesPageArgs({
    @required this.series,
  });
}

class ChapterPageArgs extends BaseArguments {
  final Chapter chapter;

  ChapterPageArgs({@required this.chapter});
}
