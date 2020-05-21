import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:wine/domain/models/user.dart';

class Series {
  String uid;
  String authorUid;
  User author;
  String title;
  String subtitle;
  String summary;
  String genre;
  String genreOptional;
  String language;
  bool isNSFW;
  String coverUrl;
  int likesCount;
  int createdAt;
  int updatedAt;

  Series({
    this.uid,
    this.authorUid,
    this.author,
    this.title,
    this.subtitle,
    this.summary,
    this.genre,
    this.genreOptional,
    this.language,
    this.isNSFW,
    this.coverUrl,
    this.likesCount,
    this.createdAt,
    this.updatedAt,
  });

  Series copyWith({
    String uid,
    String authorUid,
    User author,
    String title,
    String subtitle,
    String summary,
    String genre,
    String genreOptional,
    String language,
    bool isNSFW,
    String coverUrl,
    int likesCount,
    int createdAt,
    int updatedAt,
  }) {
    return Series(
      uid: uid ?? this.uid,
      authorUid: authorUid ?? this.authorUid,
      author: author ?? this.author,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      language: language ?? this.language,
      isNSFW: isNSFW ?? this.isNSFW,
      coverUrl: coverUrl ?? this.coverUrl,
      likesCount: likesCount ?? this.likesCount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory Series.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return Series(
      uid: data['uid'] as String,
      authorUid: data['authorUid'] as String,
      title: data['title'] as String,
      subtitle: data['subtitle'] as String,
      summary: data['summary'] as String,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      language: data['language'] as String,
      isNSFW: data['isNSFW'] as bool,
      coverUrl: data['coverUrl'] as String,
      likesCount: data['likesCount'] as int,
      createdAt: data['createdAt'] as int,
      updatedAt: data['updatedAt'] as int,
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
      'isNSFW': isNSFW,
      'coverUrl': coverUrl,
      'likesCount': likesCount,
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
      isNSFW: map['isNSFW'] as bool,
      coverUrl: map['coverUrl'] as String,
      likesCount: map['likesCount'] as int,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
    );
  }

  @override
  String toString() {
    return 'Series(uid: $uid, authorUid: $authorUid, author: $author, title: $title, subtitle: $subtitle, summary: $summary, genre: $genre, genreOptional: $genreOptional, language: $language, isNSFW: $isNSFW, coverUrl: $coverUrl, likesCount: $likesCount, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Series &&
      o.uid == uid &&
      o.authorUid == authorUid &&
      o.author == author &&
      o.title == title &&
      o.subtitle == subtitle &&
      o.summary == summary &&
      o.genre == genre &&
      o.genreOptional == genreOptional &&
      o.language == language &&
      o.isNSFW == isNSFW &&
      o.coverUrl == coverUrl &&
      o.likesCount == likesCount &&
      o.createdAt == createdAt &&
      o.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      authorUid.hashCode ^
      author.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      summary.hashCode ^
      genre.hashCode ^
      genreOptional.hashCode ^
      language.hashCode ^
      isNSFW.hashCode ^
      coverUrl.hashCode ^
      likesCount.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
}
