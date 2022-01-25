import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/chapter/body.dart';
import 'package:wine/domain/chapter/licence.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';

part 'chapter.freezed.dart';

/// @nodoc
@freezed
class Chapter with _$Chapter {
  /// @nodoc
  factory Chapter({
    required UniqueID authorUID,
    required Body body,
    required int bookmarksCount,
    required CoverURL coverURL,
    required List<Genre> genres,
    required int index,
    required bool isNSFW,
    required bool isPublished,
    required Language language,
    required Licence licence,
    required int likesCount,
    required UniqueID? previousChapterUID,
    required Title title,
    required UniqueID treeUID,
    required UniqueID uid,
    required int viewsCount,
  }) = _Chapter;

  /// @nodoc
  factory Chapter.empty() => Chapter(
        authorUID: UniqueID(),
        body: Body('', const <dynamic>[]),
        bookmarksCount: 0,
        coverURL: CoverURL(''),
        genres: <Genre>[],
        index: 0,
        isNSFW: false,
        isPublished: false,
        language: Language(''),
        licence: Licence(''),
        likesCount: 0,
        previousChapterUID: UniqueID(),
        title: Title(''),
        treeUID: UniqueID(),
        uid: UniqueID(),
        viewsCount: 0,
      );
}
