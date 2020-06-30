import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/extensions.dart';

class Chapter {
  String uid;
  String authorUid;
  User author;
  String seriesUid;
  Series series;
  String previousChapterUid;
  int index;
  String title;
  String story;
  String genre;
  String genreOptional;
  String language;
  String copyrights;
  bool isNSFW;
  bool isEnd;
  String coverUrl;
  int createdAt;
  int updatedAt;

  Chapter({
    this.uid,
    this.authorUid,
    this.author,
    this.seriesUid,
    this.series,
    this.previousChapterUid,
    this.index,
    this.title,
    this.story,
    this.genre,
    this.genreOptional,
    this.language,
    this.copyrights,
    this.isNSFW,
    this.isEnd,
    this.coverUrl,
    this.createdAt,
    this.updatedAt,
  });

  Chapter copyWith({
    String uid,
    String authorUid,
    User author,
    String seriesUid,
    Series series,
    String previousChapterUid,
    int index,
    String title,
    String story,
    String genre,
    String genreOptional,
    String language,
    String copyrights,
    bool isNSFW,
    bool isEnd,
    String coverUrl,
    int createdAt,
    int updatedAt,
  }) {
    return Chapter(
      uid: uid ?? this.uid,
      authorUid: authorUid ?? this.authorUid,
      author: author ?? this.author,
      seriesUid: seriesUid ?? this.seriesUid,
      series: series ?? this.series,
      previousChapterUid: previousChapterUid ?? this.previousChapterUid,
      index: index ?? this.index,
      title: title ?? this.title,
      story: story ?? this.story,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      language: language ?? this.language,
      copyrights: copyrights ?? this.copyrights,
      isNSFW: isNSFW ?? this.isNSFW,
      isEnd: isEnd ?? this.isEnd,
      coverUrl: coverUrl ?? this.coverUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory Chapter.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return Chapter(
      uid: data['uid'] as String,
      authorUid: data['authorUid'] as String,
      seriesUid: data['seriesUid'] as String,
      previousChapterUid: data['previousChapterUid'] as String,
      index: data['index'] as int,
      title: data['title'] as String,
      story: data['story'] as String,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      language: data['language'] as String,
      copyrights: data['copyrights'] as String,
      isNSFW: data['isNSFW'] as bool,
      isEnd: data['isEnd'] as bool,
      coverUrl: data['coverUrl'] as String,
      createdAt: data['createdAt'] as int,
      updatedAt: data['updatedAt'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'authorUid': authorUid,
      'seriesUid': seriesUid,
      'previousChapterUid': previousChapterUid,
      'index': index,
      'title': title,
      'story': story,
      'genre': genre,
      'genreOptional': genreOptional,
      'language': language,
      'copyrights': copyrights,
      'isNSFW': isNSFW,
      'isEnd': isEnd,
      'coverUrl': coverUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Chapter(
      uid: map['uid'] as String,
      authorUid: map['authorUid'] as String,
      seriesUid: map['seriesUid'] as String,
      previousChapterUid: map['previousChapterUid'] as String,
      index: map['index'] as int,
      title: map['title'] as String,
      story: map['story'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      language: map['language'] as String,
      copyrights: map['copyrights'] as String,
      isNSFW: map['isNSFW'] as bool,
      isEnd: map['isEnd'] as bool,
      coverUrl: map['coverUrl'] as String,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
    );
  }

  @override
  String toString() {
    return 'Chapter(uid: $uid, authorUid: $authorUid, author: $author, seriesUid: $seriesUid, series: $series, previousChapterUid: $previousChapterUid, index: $index, title: $title, story: $story, genre: $genre, genreOptional; $genreOptional, language: $language, copyrights: $copyrights, isNSFW: $isNSFW, isEnd: $isEnd, coverUrl: $coverUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Chapter &&
        o.uid == uid &&
        o.authorUid == authorUid &&
        o.author == author &&
        o.seriesUid == seriesUid &&
        o.series == series &&
        o.previousChapterUid == previousChapterUid &&
        o.index == index &&
        o.title == title &&
        o.story == story &&
        o.genre == genre &&
        o.genreOptional == genreOptional &&
        o.language == language &&
        o.copyrights == copyrights &&
        o.isNSFW == isNSFW &&
        o.isEnd == isEnd &&
        o.coverUrl == coverUrl &&
        o.createdAt == createdAt &&
        o.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        authorUid.hashCode ^
        author.hashCode ^
        seriesUid.hashCode ^
        series.hashCode ^
        previousChapterUid.hashCode ^
        index.hashCode ^
        title.hashCode ^
        story.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        language.hashCode ^
        copyrights.hashCode ^
        isNSFW.hashCode ^
        isEnd.hashCode ^
        coverUrl.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  bool get isEmpty {
    return uid.isEmptyOrNull &&
        authorUid.isEmptyOrNull &&
        seriesUid.isEmptyOrNull &&
        title.isEmptyOrNull &&
        story.isEmptyOrNull &&
        genre.isEmptyOrNull &&
        language.isEmptyOrNull &&
        copyrights.isEmptyOrNull &&
        coverUrl.isEmptyOrNull;
  }
}
