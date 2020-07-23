import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:wine/domain/models/chapter.dart';

class ChapterMinified {
  int createdAt;
  int index;
  int updatedAt;
  String authorUid;
  String authorUsername;
  String coverUrl;
  String seriesUid;
  String title;
  String uid;

  ChapterMinified({
    this.authorUid,
    this.authorUsername,
    this.coverUrl,
    this.createdAt,
    this.index,
    this.seriesUid,
    this.title,
    this.uid,
    this.updatedAt,
  });

  ChapterMinified copyWith({
    int createdAt,
    int index,
    int updatedAt,
    String authorUid,
    String authorUsername,
    String coverUrl,
    String seriesUid,
    String title,
    String uid,
  }) {
    return ChapterMinified(
      authorUid: authorUid ?? this.authorUid,
      authorUsername: authorUsername ?? this.authorUsername,
      coverUrl: coverUrl ?? this.coverUrl,
      createdAt: createdAt ?? this.createdAt,
      index: index ?? this.index,
      seriesUid: seriesUid ?? this.seriesUid,
      title: title ?? this.title,
      uid: uid ?? this.uid,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory ChapterMinified.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return ChapterMinified(
      authorUid: data['authorUid'] as String,
      authorUsername: data['authorUsername'] as String,
      coverUrl: data['coverUrl'] as String,
      createdAt: data['createdAt'] as int,
      index: data['index'] as int,
      seriesUid: data['seriesUid'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
      updatedAt: data['updatedAt'] as int,
    );
  }

  factory ChapterMinified.fromChapter(Chapter chapter) {
    return ChapterMinified(
      authorUid: chapter.authorUid,
      coverUrl: chapter.coverUrl,
      index: chapter.index,
      seriesUid: chapter.seriesUid,
      title: chapter.title,
      uid: chapter.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'authorUid': authorUid,
      'authorUsername': authorUsername,
      'coverUrl': coverUrl,
      'createdAt': createdAt,
      'index': index,
      'seriesUid': seriesUid,
      'title': title,
      'uid': uid,
      'updatedAt': updatedAt,
    };
  }

  factory ChapterMinified.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ChapterMinified(
      authorUid: map['authorUid'] as String,
      authorUsername: map['authorUsername'] as String,
      coverUrl: map['coverUrl'] as String,
      createdAt: map['createdAt'] as int,
      index: map['index'] as int,
      seriesUid: map['seriesUid'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as int,
    );
  }

  @override
  String toString() {
    return 'ChapterMinified(createdAt: $createdAt, index: $index, updatedAt: $updatedAt, authorUid: $authorUid, authorUsername: $authorUsername, coverUrl: $coverUrl, seriesUid: $seriesUid, title: $title, uid: $uid)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ChapterMinified &&
        o.authorUid == authorUid &&
        o.authorUsername == authorUsername &&
        o.coverUrl == coverUrl &&
        o.createdAt == createdAt &&
        o.index == index &&
        o.seriesUid == seriesUid &&
        o.title == title &&
        o.uid == uid &&
        o.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return authorUid.hashCode ^
        authorUsername.hashCode ^
        coverUrl.hashCode ^
        index.hashCode ^
        seriesUid.hashCode ^
        title.hashCode ^
        uid.hashCode ^
        updatedAt.hashCode ^
        createdAt.hashCode;
  }

  bool get isEmpty {
    return authorUid == null &&
        authorUsername == null &&
        coverUrl == null &&
        index == null &&
        seriesUid == null &&
        title == null &&
        uid == null &&
        updatedAt == null &&
        createdAt == null;
  }

  bool get isNotEmpty {
    return authorUid != null &&
        authorUsername != null &&
        coverUrl != null &&
        index != null &&
        seriesUid != null &&
        title != null &&
        uid != null &&
        updatedAt != null &&
        createdAt != null;
  }
}
