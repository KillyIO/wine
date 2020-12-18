import 'package:hive/hive.dart';

part 'chapter_draft.g.dart';

/// @nodoc
@HiveType(typeId: 3)
class ChapterDraft extends HiveObject {
  /// @nodoc
  ChapterDraft({
    this.uid,
    this.seriesUID,
    this.previousChapterUID,
    this.authorUID,
    this.title,
    this.story,
    this.index,
    this.language,
    this.copyrights,
    this.isNSFW,
    this.isEnd,
    this.genre,
    this.genreOptional,
    this.coverURL,
    this.authorUsername,
  });

  /// @nodoc
  factory ChapterDraft.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ChapterDraft(
      uid: map['uid'] as String,
      seriesUID: map['seriesUID'] as String,
      previousChapterUID: map['previousChapterUID'] as String,
      authorUID: map['authorUID'] as String,
      title: map['title'] as String,
      story: map['story'] as String,
      index: map['index'] as int,
      language: map['language'] as String,
      copyrights: map['copyrights'] as String,
      isNSFW: map['isNSFW'] as bool,
      isEnd: map['isEnd'] as bool,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      coverURL: map['coverURL'] as String,
      authorUsername: map['authorUsername'] as String,
    );
  }

  /// @nodoc
  @HiveField(0)
  String uid;

  /// @nodoc
  @HiveField(1)
  String seriesUID;

  /// @nodoc
  @HiveField(2)
  String previousChapterUID;

  /// @nodoc
  @HiveField(3)
  String authorUID;

  /// @nodoc
  @HiveField(4)
  String title;

  /// @nodoc
  @HiveField(5)
  String story;

  /// @nodoc
  @HiveField(6)
  int index;

  /// @nodoc
  @HiveField(7)
  String language;

  /// @nodoc
  @HiveField(8)
  String copyrights;

  /// @nodoc
  @HiveField(9)
  bool isNSFW;

  /// @nodoc
  @HiveField(10)
  bool isEnd;

  /// @nodoc
  @HiveField(11)
  String genre;

  /// @nodoc
  @HiveField(12)
  String genreOptional;

  /// @nodoc
  @HiveField(13)
  String coverURL;

  /// @nodoc
  @HiveField(14)
  String authorUsername;

  /// @nodoc
  ChapterDraft copyWith({
    String uid,
    String seriesUID,
    String previousChapterUID,
    String authorUID,
    String title,
    String story,
    int index,
    String language,
    String copyrights,
    bool isNSFW,
    bool isEnd,
    String genre,
    String genreOptional,
    String coverURL,
    String authorUsername,
  }) {
    return ChapterDraft(
      uid: uid ?? this.uid,
      seriesUID: seriesUID ?? this.seriesUID,
      previousChapterUID: previousChapterUID ?? this.previousChapterUID,
      authorUID: authorUID ?? this.authorUID,
      title: title ?? this.title,
      story: story ?? this.story,
      index: index ?? this.index,
      language: language ?? this.language,
      copyrights: copyrights ?? this.copyrights,
      isNSFW: isNSFW ?? this.isNSFW,
      isEnd: isEnd ?? this.isEnd,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      coverURL: coverURL ?? this.coverURL,
      authorUsername: authorUsername ?? this.authorUsername,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'seriesUID': seriesUID,
      'previousChapterUID': previousChapterUID,
      'authorUID': authorUID,
      'title': title,
      'story': story,
      'index': index,
      'language': language,
      'copyrights': copyrights,
      'isNSFW': isNSFW,
      'isEnd': isEnd,
      'genre': genre,
      'genreOptional': genreOptional,
      'coverURL': coverURL,
      'authorUsername': authorUsername,
    };
  }

  @override
  String toString() {
    return '''
      ChapterDraft(uid: $uid, seriesUID: $seriesUID, previousChapterUID: $previousChapterUID, authorUID: $authorUID, title: $title, story: $story, index: $index, language: $language, copyrights: $copyrights, isNSFW: $isNSFW, isEnd: $isEnd, genre: $genre, genreOptional: $genreOptional, coverURL: $coverURL, authorUsername: $authorUsername)
    ''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChapterDraft &&
        other.uid == uid &&
        other.seriesUID == seriesUID &&
        other.previousChapterUID == previousChapterUID &&
        other.authorUID == authorUID &&
        other.title == title &&
        other.story == story &&
        other.index == index &&
        other.language == language &&
        other.copyrights == copyrights &&
        other.isNSFW == isNSFW &&
        other.isEnd == isEnd &&
        other.genre == genre &&
        other.genreOptional == genreOptional &&
        other.coverURL == coverURL &&
        other.authorUsername == authorUsername;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        seriesUID.hashCode ^
        previousChapterUID.hashCode ^
        authorUID.hashCode ^
        title.hashCode ^
        story.hashCode ^
        index.hashCode ^
        language.hashCode ^
        copyrights.hashCode ^
        isNSFW.hashCode ^
        isEnd.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        coverURL.hashCode ^
        authorUsername.hashCode;
  }

  /// @nodoc
  bool get isEmpty {
    return uid == null &&
        seriesUID == null &&
        authorUID == null &&
        title == null &&
        story == null &&
        index == null &&
        language == null &&
        copyrights == null &&
        isNSFW == null &&
        isEnd == null &&
        genre == null &&
        coverURL == null &&
        authorUsername == null;
  }

  /// @nodoc
  bool get isNotEmpty {
    return uid != null &&
        seriesUID != null &&
        authorUID != null &&
        title != null &&
        story != null &&
        index != null &&
        language != null &&
        copyrights != null &&
        isNSFW != null &&
        isEnd != null &&
        genre != null &&
        coverURL != null &&
        authorUsername != null;
  }
}
