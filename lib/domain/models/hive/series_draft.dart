import 'package:hive/hive.dart';

part 'series_draft.g.dart';

/// @nodoc
@HiveType(typeId: 2)
class SeriesDraft extends HiveObject {
  /// @nodoc
  SeriesDraft({
    this.uid,
    this.authorUID,
    this.title,
    this.subtitle,
    this.summary,
    this.genre,
    this.genreOptional,
    this.language,
    this.isNSFW,
    this.coverURL,
    this.authorUsername,
  });

  /// @nodoc
  factory SeriesDraft.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SeriesDraft(
      uid: map['uid'] as String,
      authorUID: map['authorUID'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      summary: map['summary'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      language: map['language'] as String,
      isNSFW: map['isNSFW'] as bool,
      coverURL: map['coverURL'] as String,
      authorUsername: map['authorUsername'] as String,
    );
  }

  /// @nodoc
  @HiveField(0)
  String uid;

  /// @nodoc
  @HiveField(1)
  String authorUID;

  /// @nodoc
  @HiveField(2)
  String title;

  /// @nodoc
  @HiveField(3)
  String subtitle;

  /// @nodoc
  @HiveField(4)
  String summary;

  /// @nodoc
  @HiveField(5)
  String genre;

  /// @nodoc
  @HiveField(6)
  String genreOptional;

  /// @nodoc
  @HiveField(7)
  String language;

  /// @nodoc
  @HiveField(8)
  bool isNSFW;

  /// @nodoc
  @HiveField(9)
  String coverURL;

  /// @nodoc
  @HiveField(10)
  String authorUsername;

  /// @nodoc
  SeriesDraft copyWith({
    String uid,
    String authorUID,
    String title,
    String subtitle,
    String summary,
    String genre,
    String genreOptional,
    String language,
    bool isNSFW,
    String coverURL,
    String authorUsername,
  }) {
    return SeriesDraft(
      uid: uid ?? this.uid,
      authorUID: authorUID ?? this.authorUID,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      language: language ?? this.language,
      isNSFW: isNSFW ?? this.isNSFW,
      coverURL: coverURL ?? this.coverURL,
      authorUsername: authorUsername ?? this.authorUsername,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'authorUID': authorUID,
      'title': title,
      'subtitle': subtitle,
      'summary': summary,
      'genre': genre,
      'genreOptional': genreOptional,
      'language': language,
      'isNSFW': isNSFW,
      'coverURL': coverURL,
      'authorUsername': authorUsername,
    };
  }

  @override
  String toString() {
    return '''
      SeriesDraft(uid: $uid, authorUID: $authorUID, title: $title, subtitle: $subtitle, summary: $summary, genre: $genre, genreOptional: $genreOptional, language: $language, isNSFW: $isNSFW, coverURL: $coverURL, authorUsername: $authorUsername)
    ''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SeriesDraft &&
        other.uid == uid &&
        other.authorUID == authorUID &&
        other.title == title &&
        other.subtitle == subtitle &&
        other.summary == summary &&
        other.genre == genre &&
        other.genreOptional == genreOptional &&
        other.language == language &&
        other.isNSFW == isNSFW &&
        other.coverURL == coverURL &&
        other.authorUsername == authorUsername;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        authorUID.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        summary.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        language.hashCode ^
        isNSFW.hashCode ^
        coverURL.hashCode ^
        authorUsername.hashCode;
  }

  /// @nodoc
  bool get isEmpty {
    return uid == null &&
        authorUID == null &&
        title == null &&
        summary == null &&
        genre == null &&
        language == null &&
        isNSFW == null &&
        coverURL == null &&
        authorUsername == null;
  }

  /// @nodoc
  bool get isNotEmpty {
    return uid != null &&
        authorUID != null &&
        title != null &&
        summary != null &&
        genre != null &&
        language != null &&
        isNSFW != null &&
        coverURL != null &&
        authorUsername != null;
  }
}
