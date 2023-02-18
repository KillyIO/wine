import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/subtitle.dart';
import 'package:wine/domain/tree/synopsis.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/infrastructure/core/converter.dart';

part 'tree_dto.freezed.dart';
part 'tree_dto.g.dart';

/// @nodoc
@freezed
class TreeDTO with _$TreeDTO {
  /// @nodoc
  factory TreeDTO({
    required String authorUID,
    required int bookmarksCount,
    required String coverURL,
    required List<String> genres,
    required bool isNSFW,
    required bool isPublished,
    required String language,
    required int likesCount,
    required String synopsis,
    required String title,
    required String uid,
    @ServerTimestampConverter() required FieldValue updatedAt,
    required int viewsCount,
    String? subtitle,
  }) = _TreeDTO;

  /// @nodoc
  factory TreeDTO.fromDomain(Tree tree) {
    return TreeDTO(
      authorUID: tree.authorUID.getOrCrash(),
      bookmarksCount: tree.bookmarksCount,
      coverURL: tree.coverURL.getOrCrash(),
      genres: tree.genres.map((g) => g.getOrCrash()).toList(),
      isNSFW: tree.isNSFW,
      isPublished: tree.isPublished,
      language: tree.language.getOrCrash(),
      likesCount: tree.likesCount,
      subtitle: tree.subtitle?.getOrCrash(),
      synopsis: tree.synopsis.getOrCrash(),
      title: tree.title.getOrCrash(),
      uid: tree.uid.getOrCrash(),
      updatedAt: FieldValue.serverTimestamp(),
      viewsCount: tree.viewsCount,
    );
  }

  /// @nodoc
  factory TreeDTO.fromJson(Map<String, dynamic> json) =>
      _$TreeDTOFromJson(json);

  /// @nodoc
  factory TreeDTO.fromFirestore(DocumentSnapshot doc) {
    return TreeDTO.fromJson(doc.data()! as Map<String, dynamic>);
  }
}

/// @nodoc
extension TreeDTOX on TreeDTO {
  /// @nodoc
  Tree toDomain() => Tree(
        authorUID: UniqueID.fromUniqueString(authorUID),
        bookmarksCount: bookmarksCount,
        coverURL: CoverURL(coverURL),
        genres: genres.map(Genre.new).toList(),
        isNSFW: isNSFW,
        isPublished: isPublished,
        language: Language(language),
        likesCount: likesCount,
        subtitle: Subtitle(subtitle ?? ''),
        synopsis: Synopsis(synopsis),
        title: Title(title),
        uid: UniqueID.fromUniqueString(uid),
        viewsCount: viewsCount,
      );

  /// @nodoc
  Map<String, dynamic> toMap() => <String, dynamic>{
        'authorUID': authorUID,
        'bookmarksCount': bookmarksCount,
        'coverURL': coverURL,
        'genres': genres,
        'isNSFW': isNSFW,
        'isPublished': isPublished,
        'language': language,
        'likesCount': likesCount,
        'subtitle': subtitle,
        'synopsis': synopsis,
        'title': title,
        'uid': uid,
        'viewsCount': viewsCount,
      };
}

/// @nodoc
extension TreeMapX on Map<dynamic, dynamic> {
  /// @nodoc
  Tree toDomain() => Tree(
        authorUID: UniqueID.fromUniqueString(this['authorUID'] as String),
        bookmarksCount: this['bookmarksCount'] as int,
        coverURL: CoverURL(this['coverURL'] as String),
        genres: (this['genres'] as List<String>).map(Genre.new).toList(),
        isNSFW: this['isNSFW'] as bool,
        isPublished: this['isPublished'] as bool,
        language: Language(this['language'] as String),
        likesCount: this['likesCount'] as int,
        subtitle: Subtitle(this['subtitle'] as String),
        synopsis: Synopsis(this['synopsis'] as String),
        title: Title(this['title'] as String),
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        viewsCount: this['viewsCount'] as int,
      );
}
