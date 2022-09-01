import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/features/tree/subtitle.domain.dart';
import 'package:wine/features/tree/synopsis.domain.dart';

part 'tree.domain.freezed.dart';

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
