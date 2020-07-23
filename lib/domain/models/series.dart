import 'package:cloud_firestore/cloud_firestore.dart';

class Series {
  bool isNSFW;
  String authorUid;
  String coverUrl;
  String genre;
  String genreOptional;
  String language;
  String subtitle;
  String summary;
  String title;
  String uid;

  Series({
    this.authorUid,
    this.coverUrl,
    this.genre,
    this.genreOptional,
    this.isNSFW,
    this.language,
    this.subtitle,
    this.summary,
    this.title,
    this.uid,
  });

  Series copyWith({
    bool isNSFW,
    String authorUid,
    String coverUrl,
    String genre,
    String genreOptional,
    String language,
    String subtitle,
    String summary,
    String title,
    String uid,
  }) {
    return Series(
      authorUid: authorUid ?? this.authorUid,
      coverUrl: coverUrl ?? this.coverUrl,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      isNSFW: isNSFW ?? this.isNSFW,
      language: language ?? this.language,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      title: title ?? this.title,
      uid: uid ?? this.uid,
    );
  }

  factory Series.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return Series(
      authorUid: data['authorUid'] as String,
      coverUrl: data['coverUrl'] as String,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      isNSFW: data['isNSFW'] as bool,
      language: data['language'] as String,
      subtitle: data['subtitle'] as String,
      summary: data['summary'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'authorUid': authorUid,
      'coverUrl': coverUrl,
      'genre': genre,
      'genreOptional': genreOptional,
      'isNSFW': isNSFW,
      'language': language,
      'subtitle': subtitle,
      'summary': summary,
      'title': title,
      'uid': uid,
    };
  }

  factory Series.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Series(
      authorUid: map['authorUid'] as String,
      coverUrl: map['coverUrl'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      isNSFW: map['isNSFW'] as bool,
      language: map['language'] as String,
      subtitle: map['subtitle'] as String,
      summary: map['summary'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
    );
  }

  @override
  String toString() {
    return 'Series(uid: $uid, authorUid: $authorUid, title: $title, subtitle: $subtitle, summary: $summary, genre: $genre, genreOptional: $genreOptional, language: $language, isNSFW: $isNSFW, coverUrl: $coverUrl)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Series &&
        o.authorUid == authorUid &&
        o.coverUrl == coverUrl &&
        o.genre == genre &&
        o.genreOptional == genreOptional &&
        o.isNSFW == isNSFW &&
        o.language == language &&
        o.subtitle == subtitle &&
        o.summary == summary &&
        o.title == title &&
        o.uid == uid;
  }

  @override
  int get hashCode {
    return authorUid.hashCode ^
        coverUrl.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        isNSFW.hashCode ^
        language.hashCode ^
        subtitle.hashCode ^
        summary.hashCode ^
        title.hashCode ^
        uid.hashCode;
  }

  bool get isEmpty {
    return isNSFW == null &&
        authorUid == null &&
        coverUrl == null &&
        genre == null &&
        genreOptional == null &&
        language == null &&
        subtitle == null &&
        summary == null &&
        title == null &&
        uid == null;
  }

  bool get isNotEmpty {
    return isNSFW != null &&
        authorUid != null &&
        coverUrl != null &&
        genre != null &&
        language != null &&
        summary != null &&
        title != null &&
        uid != null;
  }
}
