import 'package:sailor/sailor.dart';

import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

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
  final String previousChapterUid;
  final int previousChapterIndex;

  NewChapterPageArgs({
    this.parentType,
    this.chapterDraft,
    this.seriesDraft,
    this.previousChapterUid,
    this.previousChapterIndex,
  });
}
