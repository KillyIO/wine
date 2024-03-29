import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/branch/leaf.dart';
import 'package:wine/domain/branch/licence.dart';
import 'package:wine/domain/branch/licence_type.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';

part 'branch.freezed.dart';

@freezed
class Branch with _$Branch {
  factory Branch({
    required UniqueID authorUID,
    required int bookmarksCount,
    required CoverURL coverURL,
    required List<Genre> genres,
    required int index,
    required bool isNSFW,
    required bool isPublished,
    required Language language,
    required Leaf leaf,
    required Licence licence,
    required int likesCount,
    required UniqueID? previousBranchUID,
    required Title title,
    required UniqueID treeUID,
    required UniqueID uid,
    required int viewsCount,
  }) = _Branch;

  factory Branch.empty() => Branch(
        authorUID: UniqueID(),
        bookmarksCount: 0,
        coverURL: CoverURL(''),
        genres: <Genre>[],
        index: 0,
        isNSFW: false,
        isPublished: false,
        language: Language(''),
        leaf: Leaf('', const <dynamic>[]),
        licence: Licence(LicenceType.unknown),
        likesCount: 0,
        previousBranchUID: UniqueID(),
        title: Title(''),
        treeUID: UniqueID(),
        uid: UniqueID(),
        viewsCount: 0,
      );
}
