import 'dart:convert';

import 'package:hive/hive.dart';

part 'chapter_draft.g.dart';

@HiveType(typeId: 3)
class ChapterDraft extends HiveObject {
  @HiveField(0)
  String uid;

  @HiveField(1)
  String seriesUid;

  @HiveField(2)
  String previousChapterUid;

  @HiveField(3)
  String authorUid;

  @HiveField(4)
  String title;

  @HiveField(5)
  String content;

  @HiveField(6)
  int index;

  @HiveField(7)
  String language;

  @HiveField(8)
  bool isNSFW;

  ChapterDraft({
    this.uid,
    this.seriesUid,
    this.previousChapterUid,
    this.authorUid,
    this.title,
    this.content,
    this.index,
    this.language,
    this.isNSFW,
  });

  ChapterDraft copyWith({
    String uid,
    String seriesUid,
    String previousChapterUid,
    String authorUid,
    String title,
    String content,
    int index,
    String language,
    bool isNSFW,
  }) {
    return ChapterDraft(
      uid: uid ?? this.uid,
      seriesUid: seriesUid ?? this.seriesUid,
      previousChapterUid: previousChapterUid ?? this.previousChapterUid,
      authorUid: authorUid ?? this.authorUid,
      title: title ?? this.title,
      content: content ?? this.content,
      index: index ?? this.index,
      language: language ?? this.language,
      isNSFW: isNSFW ?? this.isNSFW,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'seriesUid': seriesUid,
      'previousChapterUid': previousChapterUid,
      'authorUid': authorUid,
      'title': title,
      'content': content,
      'index': index,
      'language': language,
      'isNSFW': isNSFW,
    };
  }

  factory ChapterDraft.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ChapterDraft(
      uid: map['uid'] as String,
      seriesUid: map['seriesUid'] as String,
      previousChapterUid: map['previousChapterUid'] as String,
      authorUid: map['authorUid'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      index: map['index'] as int,
      language: map['language'] as String,
      isNSFW: map['isNSFW'] as bool,
    );
  }

  @override
  String toString() {
    return 'ChapterDraft(uid: $uid, seriesUid: $seriesUid, previousChapterUid: $previousChapterUid, authorUid: $authorUid, title: $title, content: $content, index: $index, language: $language, isNSFW: $isNSFW)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ChapterDraft &&
        o.uid == uid &&
        o.seriesUid == seriesUid &&
        o.previousChapterUid == previousChapterUid &&
        o.authorUid == authorUid &&
        o.title == title &&
        o.content == content &&
        o.index == index &&
        o.language == language &&
        o.isNSFW == isNSFW;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        seriesUid.hashCode ^
        previousChapterUid.hashCode ^
        authorUid.hashCode ^
        title.hashCode ^
        content.hashCode ^
        index.hashCode ^
        language.hashCode ^
        isNSFW.hashCode;
  }
}
