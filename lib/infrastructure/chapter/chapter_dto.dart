import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/chapter/licence.dart';
import 'package:wine/domain/chapter/story.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/infrastructure/core/converter.dart';

part 'chapter_dto.freezed.dart';
part 'chapter_dto.g.dart';

/// @nodoc
@freezed
class ChapterDTO with _$ChapterDTO {
  /// @nodoc
  factory ChapterDTO({
    required String authorUID,
    required int bookmarksCount,
    required String coverURL,
    required List<String> genres,
    required int index,
    required bool isNSFW,
    required bool isPublished,
    required String language,
    required String licence,
    required int likesCount,
    required String? previousChapterUID,
    required String seriesUID,
    required String story,
    required String title,
    required String uid,
    @ServerTimestampConverter() required FieldValue updatedAt,
    required int viewsCount,
  }) = _ChapterDTO;

  /// @nodoc
  factory ChapterDTO.fromDomain(Chapter chapter) {
    return ChapterDTO(
      authorUID: chapter.authorUID.getOrCrash(),
      bookmarksCount: chapter.bookmarksCount,
      coverURL: chapter.coverURL.getOrCrash(),
      genres: chapter.genres.map((g) => g.getOrCrash()).toList(),
      index: chapter.index,
      isNSFW: chapter.isNSFW,
      isPublished: chapter.isPublished,
      language: chapter.language.getOrCrash(),
      licence: chapter.licence.getOrCrash(),
      likesCount: chapter.likesCount,
      previousChapterUID: chapter.previousChapterUID?.getOrCrash(),
      seriesUID: chapter.seriesUID.getOrCrash(),
      story: chapter.story.getOrCrash(),
      title: chapter.title.getOrCrash(),
      uid: chapter.uid.getOrCrash(),
      updatedAt: FieldValue.serverTimestamp(),
      viewsCount: chapter.viewsCount,
    );
  }

  /// @nodoc
  factory ChapterDTO.fromJson(Map<String, dynamic> json) =>
      _$ChapterDTOFromJson(json);

  /// @nodoc
  factory ChapterDTO.fromFirestore(DocumentSnapshot doc) {
    return ChapterDTO.fromJson(doc.data()! as Map<String, dynamic>);
  }
}

/// @nodoc
extension ChapterDTOX on ChapterDTO {
  /// @nodoc
  Chapter toDomain() => Chapter(
        authorUID: UniqueID.fromUniqueString(authorUID),
        bookmarksCount: bookmarksCount,
        coverURL: CoverURL(coverURL),
        genres: genres.map((g) => Genre(g)).toList(),
        index: index,
        isNSFW: isNSFW,
        isPublished: isPublished,
        language: Language(language),
        licence: Licence(licence),
        likesCount: likesCount,
        previousChapterUID: UniqueID.fromUniqueString(previousChapterUID ?? ''),
        seriesUID: UniqueID.fromUniqueString(seriesUID),
        story: Story(story),
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
        'index': index,
        'isNSFW': isNSFW,
        'isPublished': isPublished,
        'language': language,
        'licence': licence,
        'likesCount': likesCount,
        'previousChapterUID': previousChapterUID,
        'seriesUID': seriesUID,
        'story': story,
        'title': title,
        'uid': uid,
        'viewsCount': viewsCount,
      };
}

/// @nodoc
extension ChapterMapX on Map {
  /// @nodoc
  Chapter toDomain() => Chapter(
        authorUID: UniqueID.fromUniqueString(this['authorUID'] as String),
        bookmarksCount: this['bookmarksCount'] as int,
        coverURL: CoverURL(this['coverURL'] as String),
        genres: (this['genres'] as List<String>).map((g) => Genre(g)).toList(),
        index: this['index'] as int,
        isNSFW: this['isNSFW'] as bool,
        isPublished: this['isPublished'] as bool,
        language: Language(this['language'] as String),
        licence: Licence(this['licence'] as String),
        likesCount: this['likesCount'] as int,
        previousChapterUID:
            UniqueID.fromUniqueString(this['previousChapterUID'] as String),
        seriesUID: UniqueID.fromUniqueString(this['seriesUID'] as String),
        story: Story(this['story'] as String),
        title: Title(this['title'] as String),
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        viewsCount: this['viewsCount'] as int,
      );
}
