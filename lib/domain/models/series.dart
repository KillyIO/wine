import 'package:cloud_firestore/cloud_firestore.dart';

/// @nodoc
class Series {
  /// @nodoc
  Series({
    this.authorUID,
    this.authorUsername,
    this.coverURL,
    this.createdAt,
    this.genre,
    this.genreOptional,
    this.isNSFW,
    this.language,
    this.subtitle,
    this.summary,
    this.title,
    this.uid,
    this.updatedAt,
  });

  /// @nodoc
  factory Series.fromFirestore(DocumentSnapshot document) {
    final data = document.data();

    return Series(
      authorUID: data['authorUID'] as String,
      authorUsername: data['authorUsername'] as String,
      coverURL: data['coverURL'] as String,
      createdAt: data['createdAt'] as int,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      isNSFW: data['isNSFW'] as bool,
      language: data['language'] as String,
      subtitle: data['subtitle'] as String,
      summary: data['summary'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
      updatedAt: data['updatedAt'] as int,
    );
  }

  /// @nodoc
  factory Series.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Series(
      authorUID: map['authorUID'] as String,
      authorUsername: map['authorUsername'] as String,
      coverURL: map['coverURL'] as String,
      createdAt: map['createdAt'] as int,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      isNSFW: map['isNSFW'] as bool,
      language: map['language'] as String,
      subtitle: map['subtitle'] as String,
      summary: map['summary'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as int,
    );
  }

  /// @nodoc
  bool isNSFW;

  /// @nodoc
  int createdAt;

  /// @nodoc
  int updatedAt;

  /// @nodoc
  String authorUID;

  /// @nodoc
  String authorUsername;

  /// @nodoc
  String coverURL;

  /// @nodoc
  String genre;

  /// @nodoc
  String genreOptional;

  /// @nodoc
  String language;

  /// @nodoc
  String subtitle;

  /// @nodoc
  String summary;

  /// @nodoc
  String title;

  /// @nodoc
  String uid;

  /// @nodoc
  Series copyWith({
    bool isNSFW,
    int createdAt,
    int updatedAt,
    String authorUID,
    String authorUsername,
    String coverURL,
    String genre,
    String genreOptional,
    String language,
    String subtitle,
    String summary,
    String title,
    String uid,
  }) {
    return Series(
      authorUID: authorUID ?? this.authorUID,
      authorUsername: authorUsername ?? this.authorUsername,
      coverURL: coverURL ?? this.coverURL,
      createdAt: createdAt ?? this.createdAt,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      isNSFW: isNSFW ?? this.isNSFW,
      language: language ?? this.language,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
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
      'coverURL': coverURL,
      'createdAt': createdAt,
      'genre': genre,
      'genreOptional': genreOptional,
      'isNSFW': isNSFW,
      'language': language,
      'subtitle': subtitle,
      'summary': summary,
      'title': title,
      'uid': uid,
      'updatedAt': updatedAt,
    };
  }

  @override
  String toString() {
    return '''
      Series(
        authorUID: $authorUID,
        coverURL: $coverURL
        createAt: $createdAt,
        genre: $genre,
        genreOptional: $genreOptional,
        isNSFW: $isNSFW,
        language: $language,
        subtitle: $subtitle,
        summary: $summary,
        title: $title,
        uid: $uid,
        updatedAt: $updatedAt,
      )
    ''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Series &&
        other.authorUID == authorUID &&
        other.authorUsername == authorUsername &&
        other.coverURL == coverURL &&
        other.createdAt == createdAt &&
        other.genre == genre &&
        other.genreOptional == genreOptional &&
        other.isNSFW == isNSFW &&
        other.language == language &&
        other.subtitle == subtitle &&
        other.summary == summary &&
        other.title == title &&
        other.uid == uid &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return authorUID.hashCode ^
        authorUsername.hashCode ^
        coverURL.hashCode ^
        createdAt.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        isNSFW.hashCode ^
        language.hashCode ^
        subtitle.hashCode ^
        summary.hashCode ^
        title.hashCode ^
        uid.hashCode ^
        updatedAt.hashCode;
  }

  /// @nodoc
  bool get isEmpty {
    return authorUsername == null &&
        authorUID == null &&
        coverURL == null &&
        createdAt == null &&
        genre == null &&
        isNSFW == null &&
        language == null &&
        summary == null &&
        title == null &&
        uid == null &&
        updatedAt == null;
  }

  /// @nodoc
  bool get isNotEmpty {
    return authorUID != null &&
        authorUsername != null &&
        coverURL != null &&
        createdAt != null &&
        genre != null &&
        isNSFW != null &&
        language != null &&
        summary != null &&
        title != null &&
        uid != null &&
        updatedAt != null;
  }
}
