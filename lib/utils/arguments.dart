import 'package:sailor/sailor.dart';

import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/series.dart';

class NewSeriesPageArgs extends BaseArguments {
  final SeriesDraft seriesDraft;

  NewSeriesPageArgs({
    this.seriesDraft,
  });
}

class NewChapterPageArgs extends BaseArguments {
  final ParentType parentType;
  final ChapterDraft chapterDraft;
  final SeriesDraft seriesDraft;
  final ChapterDraft previousChapterDraft;

  NewChapterPageArgs({
    this.parentType,
    this.chapterDraft,
    this.seriesDraft,
    this.previousChapterDraft,
  });
}

class SeriesPageArgs extends BaseArguments {
  final Series series;

  SeriesPageArgs({
    this.series,
  });
}
