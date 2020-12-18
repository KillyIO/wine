import 'package:cloud_firestore/cloud_firestore.dart';

/// @nodoc
class Chapter {
  /// @nodoc
  Chapter({
    this.authorUID,
    this.authorUsername,
    this.copyrights,
    this.coverURL,
    this.createdAt,
    this.genre,
    this.genreOptional,
    this.index,
    this.isLastChapter,
    this.isNSFW,
    this.language,
    this.previousChapterUID,
    this.seriesUID,
    this.story,
    this.title,
    this.uid,
    this.updatedAt,
  });

  /// @nodoc
  factory Chapter.fromFirestore(DocumentSnapshot document) {
    final data = document.data();
    return Chapter(
      authorUID: data['authorUID'] as String,
      authorUsername: data['authorUsername'] as String,
      copyrights: data['copyrights'] as String,
      coverURL: data['coverURL'] as String,
      createdAt: data['createdAt'] as int,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      index: data['index'] as int,
      isLastChapter: data['isLastChapter'] as bool,
      isNSFW: data['isNSFW'] as bool,
      language: data['language'] as String,
      previousChapterUID: data['previousChapterUID'] as String,
      seriesUID: data['seriesUID'] as String,
      story: data['story'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
      updatedAt: data['updatedAt'] as int,
    );
  }

  /// @nodoc
  factory Chapter.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Chapter(
      authorUID: map['authorUID'] as String,
      authorUsername: map['authorUsername'] as String,
      copyrights: map['copyrights'] as String,
      coverURL: map['coverURL'] as String,
      createdAt: map['createdAt'] as int,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      index: map['index'] as int,
      isLastChapter: map['isLastChapter'] as bool,
      isNSFW: map['isNSFW'] as bool,
      language: map['language'] as String,
      previousChapterUID: map['previousChapterUID'] as String,
      seriesUID: map['seriesUID'] as String,
      story: map['story'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as int,
    );
  }

  /// @nodoc
  bool isLastChapter;

  /// @nodoc
  bool isNSFW;

  /// @nodoc
  int createdAt;

  /// @nodoc
  int index;

  /// @nodoc
  int updatedAt;

  /// @nodoc
  String authorUID;

  /// @nodoc
  String authorUsername;

  /// @nodoc
  String copyrights;

  /// @nodoc
  String coverURL;

  /// @nodoc
  String genre;

  /// @nodoc
  String genreOptional;

  /// @nodoc
  String language;

  /// @nodoc
  String previousChapterUID;

  /// @nodoc
  String seriesUID;

  /// @nodoc
  String story;

  /// @nodoc
  String title;

  /// @nodoc
  String uid;

  /// @nodoc
  Chapter copyWith({
    bool isLastChapter,
    bool isNSFW,
    int createdAt,
    int index,
    int updatedAt,
    String authorUID,
    String authorUsername,
    String copyrights,
    String coverURL,
    String genre,
    String genreOptional,
    String language,
    String previousChapterUID,
    String seriesUID,
    String story,
    String title,
    String uid,
  }) {
    return Chapter(
      authorUID: authorUID ?? this.authorUID,
      authorUsername: authorUsername ?? this.authorUsername,
      copyrights: copyrights ?? this.copyrights,
      coverURL: coverURL ?? this.coverURL,
      createdAt: createdAt ?? this.createdAt,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      index: index ?? this.index,
      isLastChapter: isLastChapter ?? this.isLastChapter,
      isNSFW: isNSFW ?? this.isNSFW,
      language: language ?? this.language,
      previousChapterUID: previousChapterUID ?? this.previousChapterUID,
      seriesUID: seriesUID ?? this.seriesUID,
      story: story ?? this.story,
      title: title ?? this.title,
      uid: uid ?? this.uid,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'authorUID': authorUID,
      'authorUsername': authorUsername,
      'copyrights': copyrights,
      'coverURL': coverURL,
      'createdAt': createdAt,
      'genre': genre,
      'genreOptional': genreOptional,
      'index': index,
      'isLastChapter': isLastChapter,
      'isNSFW': isNSFW,
      'language': language,
      'previousChapterUID': previousChapterUID,
      'seriesUID': seriesUID,
      'story': story,
      'title': title,
      'uid': uid,
      'updatedAt': updatedAt
    };
  }

  @override
  String toString() {
    return '''
      Chapter(
        authorUID: $authorUID,
        authorUsername: $authorUsername,
        copyrights: $copyrights,
        coverURL: $coverURL,
        createdAt: $createdAt,
        genre: $genre,
        genreOptional; $genreOptional,
        index: $index,
        isLastChapter: $isLastChapter,
        isNSFW: $isNSFW,
        language: $language,
        previousChapterUID: $previousChapterUID,
        seriesUID: $seriesUID,
        story: $story,
        title: $title,
        uid: $uid,
        updatedAt: $updatedAt,
      )
    ''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Chapter &&
        other.authorUID == authorUID &&
        other.authorUsername == authorUsername &&
        other.copyrights == copyrights &&
        other.coverURL == coverURL &&
        other.createdAt == createdAt &&
        other.genre == genre &&
        other.genreOptional == genreOptional &&
        other.index == index &&
        other.isLastChapter == isLastChapter &&
        other.isNSFW == isNSFW &&
        other.language == language &&
        other.previousChapterUID == previousChapterUID &&
        other.seriesUID == seriesUID &&
        other.story == story &&
        other.title == title &&
        other.uid == uid &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return authorUID.hashCode ^
        authorUsername.hashCode ^
        copyrights.hashCode ^
        coverURL.hashCode ^
        createdAt.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        index.hashCode ^
        isLastChapter.hashCode ^
        isNSFW.hashCode ^
        language.hashCode ^
        previousChapterUID.hashCode ^
        seriesUID.hashCode ^
        story.hashCode ^
        title.hashCode ^
        uid.hashCode ^
        updatedAt.hashCode;
  }

  /// @nodoc
  bool get isEmpty {
    return authorUID == null &&
        authorUsername == null &&
        copyrights == null &&
        coverURL == null &&
        createdAt == null &&
        genre == null &&
        index == null &&
        isLastChapter == null &&
        isNSFW == null &&
        language == null &&
        seriesUID == null &&
        story == null &&
        title == null &&
        uid == null &&
        updatedAt == null;
  }

  /// @nodoc
  bool get isNotEmpty {
    return authorUID != null &&
        authorUsername != null &&
        copyrights != null &&
        coverURL != null &&
        createdAt != null &&
        genre != null &&
        index != null &&
        isLastChapter != null &&
        isNSFW != null &&
        language != null &&
        seriesUID != null &&
        story != null &&
        title != null &&
        uid != null &&
        updatedAt != null;
  }
}
