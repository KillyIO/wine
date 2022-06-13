import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/core/cover_url.domain.dart';
import 'package:wine/core/genre.domain.dart';
import 'package:wine/core/language.domain.dart';
import 'package:wine/core/title.domain.dart';
import 'package:wine/core/unique_id.domain.dart';
import 'package:wine/domain/tree/subtitle.dart';
import 'package:wine/domain/tree/synopsis.dart';

part 'tree.freezed.dart';

/// @nodoc
@freezed
class Tree with _$Tree {
  /// @nodoc
  factory Tree({
    required UniqueID authorUID,
    required int bookmarksCount,
    required CoverURL coverURL,
    required List<Genre> genres,
    required bool isNSFW,
    required bool isPublished,
    required Language language,
    required int likesCount,
    Subtitle? subtitle,
    required Synopsis synopsis,
    required Title title,
    required UniqueID uid,
    required int viewsCount,
  }) = _Tree;

  /// @nodoc
  factory Tree.empty() => Tree(
        authorUID: UniqueID(),
        bookmarksCount: 0,
        coverURL: CoverURL(''),
        genres: <Genre>[],
        isNSFW: false,
        isPublished: false,
        language: Language(''),
        likesCount: 0,
        subtitle: Subtitle(''),
        synopsis: Synopsis(''),
        title: Title(''),
        uid: UniqueID(),
        viewsCount: 0,
      );
}
