import 'dart:convert';

class Series {
  String uid;
  String authorUid;
  String title;
  String subtitle;
  String summary;
  String genre;
  String genreOptional;
  String language;
  String copyrights;
  int createdAt;
  int updatedAt;

  Series({
    this.uid,
    this.authorUid,
    this.title,
    this.subtitle,
    this.summary,
    this.genre,
    this.genreOptional,
    this.language,
    this.copyrights,
    this.createdAt,
    this.updatedAt,
  });

  Series copyWith({
    String uid,
    String authorUid,
    String title,
    String subtitle,
    String summary,
    String genre,
    String genreOptional,
    String language,
    String copyrights,
    int createdAt,
    int updatedAt,
  }) {
    return Series(
      uid: uid ?? this.uid,
      authorUid: authorUid ?? this.authorUid,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      language: language ?? this.language,
      copyrights: copyrights ?? this.copyrights,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'authorUid': authorUid,
      'title': title,
      'subtitle': subtitle,
      'summary': summary,
      'genre': genre,
      'genreOptional': genreOptional,
      'language': language,
      'copyrights': copyrights,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Series.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Series(
      uid: map['uid'] as String,
      authorUid: map['authorUid'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      summary: map['summary'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      language: map['language'] as String,
      copyrights: map['copyrights'] as String,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
    );
  }

  @override
  String toString() {
    return 'Series(uid: $uid, authorUid: $authorUid, title: $title, subtitle: $subtitle, summary: $summary, genre: $genre, genreOptional: $genreOptional, language: $language, copyrights: $copyrights, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Series &&
        o.uid == uid &&
        o.authorUid == authorUid &&
        o.title == title &&
        o.subtitle == subtitle &&
        o.summary == summary &&
        o.genre == genre &&
        o.genreOptional == genreOptional &&
        o.language == language &&
        o.copyrights == copyrights &&
        o.createdAt == createdAt &&
        o.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        authorUid.hashCode ^
        title.hashCode ^
        subtitle.hashCode ^
        summary.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        language.hashCode ^
        copyrights.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
