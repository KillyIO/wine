import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:wine/domain/models/series.dart';

class SeriesMinified {
  int createdAt;
  int likesCount;
  int updatedAt;
  String authorUid;
  String authorUsername;
  String coverUrl;
  String genre;
  String language;
  String title;
  String uid;

  SeriesMinified({
    this.authorUid,
    this.authorUsername,
    this.coverUrl,
    this.createdAt,
    this.genre,
    this.language,
    this.likesCount,
    this.title,
    this.uid,
    this.updatedAt,
  });

  SeriesMinified copyWith({
    int createdAt,
    int likesCount,
    int updatedAt,
    String authorUid,
    String authorUsername,
    String coverUrl,
    String genre,
    String language,
    String title,
    String uid,
  }) {
    return SeriesMinified(
      authorUid: authorUid ?? this.authorUid,
      authorUsername: authorUsername ?? this.authorUsername,
      coverUrl: coverUrl ?? this.coverUrl,
      createdAt: createdAt ?? this.createdAt,
      genre: genre ?? this.genre,
      language: language ?? this.language,
      likesCount: likesCount ?? this.likesCount,
      title: title ?? this.title,
      uid: uid ?? this.uid,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory SeriesMinified.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return SeriesMinified(
      authorUid: data['authorUid'] as String,
      authorUsername: data['authorUsername'] as String,
      coverUrl: data['coverUrl'] as String,
      createdAt: data['createdAt'] as int,
      genre: data['genre'] as String,
      language: data['language'] as String,
      likesCount: data['likesCount'] as int,
      title: data['title'] as String,
      uid: data['uid'] as String,
      updatedAt: data['updatedAt'] as int,
    );
  }

  factory SeriesMinified.fromSeries(Series series) {
    return SeriesMinified(
      authorUid: series.authorUid,
      coverUrl: series.coverUrl,
      genre: series.genre,
      language: series.language,
      title: series.title,
      uid: series.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'authorUid': authorUid,
      'authorUsername': authorUsername,
      'coverUrl': coverUrl,
      'createdAt': createdAt,
      'genre': genre,
      'language': language,
      'likesCount': likesCount,
      'title': title,
      'uid': uid,
      'updatedAt': updatedAt,
    };
  }

  factory SeriesMinified.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SeriesMinified(
      authorUid: map['authorUid'] as String,
      authorUsername: map['authorUsername'] as String,
      coverUrl: map['coverUrl'] as String,
      createdAt: map['createdAt'] as int,
      likesCount: map['likesCount'] as int,
      title: map['title'] as String,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as int,
    );
  }

  @override
  String toString() {
    return 'SeriesMinified(createdAt: $createdAt, likesCount: $likesCount, updatedAt: $updatedAt, authorUid: $authorUid, authorUsername: $authorUsername, coverUrl: $coverUrl, genre: $genre, language: $language, title: $title, uid: $uid)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SeriesMinified &&
        o.authorUid == authorUid &&
        o.authorUsername == authorUsername &&
        o.coverUrl == coverUrl &&
        o.createdAt == createdAt &&
        o.genre == genre &&
        o.language == language &&
        o.likesCount == likesCount &&
        o.title == title &&
        o.uid == uid &&
        o.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return authorUid.hashCode ^
        authorUsername.hashCode ^
        coverUrl.hashCode ^
        genre.hashCode ^
        language.hashCode ^
        likesCount.hashCode ^
        title.hashCode ^
        uid.hashCode ^
        updatedAt.hashCode ^
        createdAt.hashCode;
  }

  bool get isEmpty {
    return authorUid == null &&
        authorUsername == null &&
        coverUrl == null &&
        genre == null &&
        language == null &&
        likesCount == null &&
        title == null &&
        uid == null &&
        updatedAt == null &&
        createdAt == null;
  }

  bool get isNotEmpty {
    return authorUid != null &&
        authorUsername != null &&
        coverUrl != null &&
        genre != null &&
        language != null &&
        likesCount != null &&
        title != null &&
        uid != null &&
        updatedAt != null &&
        createdAt != null;
  }
}
