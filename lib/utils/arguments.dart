import 'package:flutter/foundation.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/hive/series_draft.dart';

class NewSeriesPageArgs extends BaseArguments {
  final SeriesDraft seriesDraft;

  NewSeriesPageArgs({
    this.seriesDraft,
  });
}

class NewChapterPageArgs extends BaseArguments {
  final ParentType parentType;
  final SeriesDraft seriesDraft;
  final int chapterIndex;

  NewChapterPageArgs({
    @required this.parentType,
    this.seriesDraft,
    this.chapterIndex,
  });
}
