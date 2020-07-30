import 'package:cloud_firestore/cloud_firestore.dart';

class Chapter {
  bool isEnd;
  bool isNSFW;
  int index;
  String authorUid;
  String copyrights;
  String coverUrl;
  String genre;
  String genreOptional;
  String language;
  String previousChapterUid;
  String seriesUid;
  String story;
  String title;
  String uid;

  Chapter({
    this.authorUid,
    this.copyrights,
    this.coverUrl,
    this.genre,
    this.genreOptional,
    this.index,
    this.isEnd,
    this.isNSFW,
    this.language,
    this.previousChapterUid,
    this.seriesUid,
    this.story,
    this.title,
    this.uid,
  });

  Chapter copyWith({
    bool isEnd,
    bool isNSFW,
    int index,
    String authorUid,
    String copyrights,
    String coverUrl,
    String genre,
    String genreOptional,
    String language,
    String previousChapterUid,
    String seriesUid,
    String story,
    String title,
    String uid,
  }) {
    return Chapter(
      authorUid: authorUid ?? this.authorUid,
      copyrights: copyrights ?? this.copyrights,
      coverUrl: coverUrl ?? this.coverUrl,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      index: index ?? this.index,
      isEnd: isEnd ?? this.isEnd,
      isNSFW: isNSFW ?? this.isNSFW,
      language: language ?? this.language,
      previousChapterUid: previousChapterUid ?? this.previousChapterUid,
      seriesUid: seriesUid ?? this.seriesUid,
      story: story ?? this.story,
      title: title ?? this.title,
      uid: uid ?? this.uid,
    );
  }

  factory Chapter.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return Chapter(
      authorUid: data['authorUid'] as String,
      copyrights: data['copyrights'] as String,
      coverUrl: data['coverUrl'] as String,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      index: data['index'] as int,
      isEnd: data['isEnd'] as bool,
      isNSFW: data['isNSFW'] as bool,
      language: data['language'] as String,
      previousChapterUid: data['previousChapterUid'] as String,
      seriesUid: data['seriesUid'] as String,
      story: data['story'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'authorUid': authorUid,
      'copyrights': copyrights,
      'coverUrl': coverUrl,
      'genre': genre,
      'genreOptional': genreOptional,
      'index': index,
      'isEnd': isEnd,
      'isNSFW': isNSFW,
      'language': language,
      'previousChapterUid': previousChapterUid,
      'seriesUid': seriesUid,
      'story': story,
      'title': title,
      'uid': uid,
    };
  }

  factory Chapter.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Chapter(
      authorUid: map['authorUid'] as String,
      copyrights: map['copyrights'] as String,
      coverUrl: map['coverUrl'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      index: map['index'] as int,
      isEnd: map['isEnd'] as bool,
      isNSFW: map['isNSFW'] as bool,
      language: map['language'] as String,
      previousChapterUid: map['previousChapterUid'] as String,
      seriesUid: map['seriesUid'] as String,
      story: map['story'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
    );
  }

  @override
  String toString() {
    return 'Chapter(uid: $uid, authorUid: $authorUid, seriesUid: $seriesUid, previousChapterUid: $previousChapterUid, index: $index, title: $title, story: $story, genre: $genre, genreOptional; $genreOptional, language: $language, copyrights: $copyrights, isNSFW: $isNSFW, isEnd: $isEnd, coverUrl: $coverUrl)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Chapter &&
        o.authorUid == authorUid &&
        o.copyrights == copyrights &&
        o.coverUrl == coverUrl &&
        o.genre == genre &&
        o.genreOptional == genreOptional &&
        o.index == index &&
        o.isEnd == isEnd &&
        o.isNSFW == isNSFW &&
        o.language == language &&
        o.previousChapterUid == previousChapterUid &&
        o.seriesUid == seriesUid &&
        o.story == story &&
        o.title == title &&
        o.uid == uid;
  }

  @override
  int get hashCode {
    return authorUid.hashCode ^
        copyrights.hashCode ^
        coverUrl.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        index.hashCode ^
        isEnd.hashCode ^
        isNSFW.hashCode ^
        language.hashCode ^
        previousChapterUid.hashCode ^
        seriesUid.hashCode ^
        story.hashCode ^
        title.hashCode ^
        uid.hashCode;
  }

  bool get isEmpty {
    return isEnd == null &&
        isNSFW == null &&
        index == null &&
        authorUid == null &&
        copyrights == null &&
        coverUrl == null &&
        genre == null &&
        genreOptional == null &&
        language == null &&
        previousChapterUid == null &&
        seriesUid == null &&
        story == null &&
        title == null &&
        uid == null;
  }

  bool get isNotEmpty {
    return isEnd != null &&
        isNSFW != null &&
        index != null &&
        authorUid != null &&
        copyrights != null &&
        coverUrl != null &&
        genre != null &&
        language != null &&
        seriesUid != null &&
        story != null &&
        title != null &&
        uid != null;
  }
}
