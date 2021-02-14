import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_stringprocess/flutter_stringprocess.dart';
import 'package:wine/utils/constants/chapters.dart';

/// @nodoc
class Chapter extends Equatable {
  /// @nodoc
  Chapter({
    this.isDeleted,
    this.isLastChapter,
    this.isNSFW,
    this.createdAt,
    this.index,
    this.updatedAt,
    this.authorUID,
    this.coverURL,
    this.deletionReason,
    this.genre,
    this.genreOptional,
    this.language,
    this.licence,
    this.previousChapterUID,
    this.seriesUID,
    this.story,
    this.title,
    this.uid,
  });

  /// @nodoc
  factory Chapter.fromFirestore(DocumentSnapshot document) {
    if (document == null || document.data() == null) return null;

    final data = document.data();

    return Chapter(
      isDeleted: data['isDeleted'] as bool,
      isLastChapter: data['isLastChapter'] as bool,
      isNSFW: data['isNSFW'] as bool,
      createdAt: data['createdAt'] as int,
      index: data['index'] as int,
      updatedAt: data['updatedAt'] as int,
      authorUID: data['authorUID'] as String,
      coverURL: data['coverURL'] as String,
      deletionReason: data['deletionReason'] as String,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      language: data['language'] as String,
      licence: data['licence'] as String,
      previousChapterUID: data['previousChapterUID'] as String,
      seriesUID: data['seriesUID'] as String,
      story: data['story'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
    );
  }

  /// @nodoc
  factory Chapter.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Chapter(
      isDeleted: map['isDeleted'] as bool,
      isLastChapter: map['isLastChapter'] as bool,
      isNSFW: map['isNSFW'] as bool,
      createdAt: map['createdAt'] as int,
      index: map['index'] as int,
      updatedAt: map['updatedAt'] as int,
      authorUID: map['authorUID'] as String,
      coverURL: map['coverURL'] as String,
      deletionReason: map['deletionReason'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      language: map['language'] as String,
      licence: map['licence'] as String,
      previousChapterUID: map['previousChapterUID'] as String,
      seriesUID: map['seriesUID'] as String,
      story: map['story'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
    );
  }

  /// @nodoc
  final bool isDeleted;

  /// @nodoc
  final bool isLastChapter;

  /// @nodoc
  final bool isNSFW;

  /// @nodoc
  final int createdAt;

  /// @nodoc
  final int index;

  /// @nodoc
  final int updatedAt;

  /// @nodoc
  final String authorUID;

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final String deletionReason;

  /// @nodoc
  final String genre;

  /// @nodoc
  final String genreOptional;

  /// @nodoc
  final String language;

  /// @nodoc
  final String licence;

  /// @nodoc
  final String previousChapterUID;

  /// @nodoc
  final String seriesUID;

  /// @nodoc
  final String story;

  /// @nodoc
  final String title;

  /// @nodoc
  final String uid;

  /// @nodoc
  Chapter copyWith({
    bool isDeleted,
    bool isLastChapter,
    bool isNSFW,
    int createdAt,
    int index,
    int updatedAt,
    String authorUID,
    String coverURL,
    String deletionReason,
    String genre,
    String genreOptional,
    String language,
    String licence,
    String previousChapterUID,
    String seriesUID,
    String story,
    String title,
    String uid,
  }) {
    return Chapter(
      isDeleted: isDeleted ?? this.isDeleted,
      isLastChapter: isLastChapter ?? this.isLastChapter,
      isNSFW: isNSFW ?? this.isNSFW,
      createdAt: createdAt ?? this.createdAt,
      index: index ?? this.index,
      updatedAt: updatedAt ?? this.updatedAt,
      authorUID: authorUID ?? this.authorUID,
      coverURL: coverURL ?? this.coverURL,
      deletionReason: deletionReason ?? this.deletionReason,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      language: language ?? this.language,
      licence: licence ?? this.licence,
      previousChapterUID: previousChapterUID ?? this.previousChapterUID,
      seriesUID: seriesUID ?? this.seriesUID,
      story: story ?? this.story,
      title: title ?? this.title,
      uid: uid ?? this.uid,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'isDeleted': isDeleted,
      'isLastChapter': isLastChapter,
      'isNSFW': isNSFW,
      'createdAt': createdAt,
      'index': index,
      'updatedAt': updatedAt,
      'authorUID': authorUID,
      'coverURL': coverURL,
      'deletionReason': deletionReason,
      'genre': genre,
      'genreOptional': genreOptional,
      'language': language,
      'licence': licence,
      'previousChapterUID': previousChapterUID,
      'seriesUID': seriesUID,
      'story': story,
      'title': title,
      'uid': uid,
    };
  }

  @override
  List<Object> get props => [authorUID, seriesUID, uid];

  @override
  bool get stringify => true;

  /// @nodoc
  bool get isPublishable =>
      isDeleted != null &&
      isLastChapter != null &&
      isNSFW != null &&
      createdAt != null &&
      index != null &&
      updatedAt != null &&
      authorUID != null &&
      coverURL != null &&
      genre != null &&
      language != null &&
      licence != null &&
      seriesUID != null &&
      story != null &&
      story.isNotEmpty &&
      StringProcessor().getWordCount(story) >= chapterStoryMinWords &&
      StringProcessor().getWordCount(story) <= chapterStoryMaxWords &&
      title != null &&
      title.isNotEmpty &&
      StringProcessor().getWordCount(title) <= chapterTitleMaxWords &&
      uid != null;

  /// Whether or not a chapter can be saved as a draft.
  bool get isSaveable => authorUID != null && seriesUID != null && uid != null;
}
