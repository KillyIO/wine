import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Chapter {
  String uid;
  String seriesUid;
  String previousChapterUid;
  String authorUid;
  int index;
  String title;
  String story;
  String language;
  String copyrights;
  bool isNSFW;
  bool isEnd;
  int createdAt;
  int updatedAt;

  Chapter({
    this.uid,
    this.seriesUid,
    this.previousChapterUid,
    this.authorUid,
    this.index,
    this.title,
    this.story,
    this.language,
    this.copyrights,
    this.isNSFW,
    this.isEnd,
    this.createdAt,
    this.updatedAt,
  });

  Chapter copyWith({
    String uid,
    String seriesUid,
    String previousChapterUid,
    String authorUid,
    int index,
    String title,
    String story,
    String language,
    String copyrights,
    bool isNSFW,
    bool isEnd,
    int createdAt,
    int updatedAt,
  }) {
    return Chapter(
      uid: uid ?? this.uid,
      seriesUid: seriesUid ?? this.seriesUid,
      previousChapterUid: previousChapterUid ?? this.previousChapterUid,
      authorUid: authorUid ?? this.authorUid,
      index: index ?? this.index,
      title: title ?? this.title,
      story: story ?? this.story,
      language: language ?? this.language,
      copyrights: copyrights ?? this.copyrights,
      isNSFW: isNSFW ?? this.isNSFW,
      isEnd: isEnd ?? this.isEnd,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory Chapter.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return Chapter(
      uid: data['uid'] as String,
      seriesUid: data['seriesUid'] as String,
      previousChapterUid: data['previousChapterUid'] as String,
      authorUid: data['authorUid'] as String,
      index: data['index'] as int,
      title: data['title'] as String,
      story: data['story'] as String,
      language: data['language'] as String,
      copyrights: data['copyrights'] as String,
      isNSFW: data['isNSFW'] as bool,
      createdAt: data['createdAt'] as int,
      updatedAt: data['updatedAt'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'seriesUid': seriesUid,
      'previousChapterUid': previousChapterUid,
      'authorUid': authorUid,
      'index': index,
      'title': title,
      'story': story,
      'language': language,
      'copyrights': copyrights,
      'isNSFW': isNSFW,
      'isEnd': isEnd,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Chapter(
      uid: map['uid'] as String,
      seriesUid: map['seriesUid'] as String,
      previousChapterUid: map['previousChapterUid'] as String,
      authorUid: map['authorUid'] as String,
      index: map['index'] as int,
      title: map['title'] as String,
      story: map['story'] as String,
      language: map['language'] as String,
      copyrights: map['copyrights'] as String,
      isNSFW: map['isNSFW'] as bool,
      isEnd: map['isEnd'] as bool,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
    );
  }

  @override
  String toString() {
    return 'Chapter(uid: $uid, seriesUid: $seriesUid, previousChapterUid: $previousChapterUid, authorUid: $authorUid, index: $index, title: $title, story: $story, language: $language, copyrights: $copyrights, isNSFW: $isNSFW, isEnd: $isEnd, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Chapter &&
      o.uid == uid &&
      o.seriesUid == seriesUid &&
      o.previousChapterUid == previousChapterUid &&
      o.authorUid == authorUid &&
      o.index == index &&
      o.title == title &&
      o.story == story &&
      o.language == language &&
      o.copyrights == copyrights &&
      o.isNSFW == isNSFW &&
      o.isEnd == isEnd &&
      o.createdAt == createdAt &&
      o.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      seriesUid.hashCode ^
      previousChapterUid.hashCode ^
      authorUid.hashCode ^
      index.hashCode ^
      title.hashCode ^
      story.hashCode ^
      language.hashCode ^
      copyrights.hashCode ^
      isNSFW.hashCode ^
      isEnd.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
}
