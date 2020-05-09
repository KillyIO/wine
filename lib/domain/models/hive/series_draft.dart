import 'package:hive/hive.dart';

part 'series_draft.g.dart';

@HiveType(typeId: 2)
class SeriesDraft extends HiveObject {
  @HiveField(0)
  String uid;

  @HiveField(1)
  String authorUid;

  @HiveField(2)
  String title;

  @HiveField(3)
  String subtitle;

  @HiveField(4)
  String summary;

  @HiveField(5)
  String genre;

  @HiveField(6)
  String genreOptional;

  @HiveField(7)
  String language;

  @HiveField(8)
  String copyrights;

  @HiveField(9)
  bool isNSFW;

  SeriesDraft({
    this.uid,
    this.authorUid,
    this.title,
    this.subtitle,
    this.summary,
    this.genre,
    this.genreOptional,
    this.language,
    this.copyrights,
    this.isNSFW,
  });

  SeriesDraft copyWith({
    String uid,
    String authorUid,
    String title,
    String subtitle,
    String summary,
    String genre,
    String genreOptional,
    String language,
    String copyrights,
    bool isNSFW,
  }) {
    return SeriesDraft(
      uid: uid ?? this.uid,
      authorUid: authorUid ?? this.authorUid,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      language: language ?? this.language,
      copyrights: copyrights ?? this.copyrights,
      isNSFW: isNSFW ?? this.isNSFW,
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
      'isNSFW': isNSFW,
    };
  }

  factory SeriesDraft.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return SeriesDraft(
      uid: map['uid'] as String,
      authorUid: map['authorUid'] as String,
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      summary: map['summary'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      language: map['language'] as String,
      copyrights: map['copyrights'] as String,
      isNSFW: map['isNSFW'] as bool,
    );
  }

  @override
  String toString() {
    return 'SeriesDraft(uid: $uid, authorUid: $authorUid, title: $title, subtitle: $subtitle, summary: $summary, genre: $genre, genreOptional: $genreOptional, language: $language, copyrights: $copyrights, isNSFW: $isNSFW)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SeriesDraft &&
        o.uid == uid &&
        o.authorUid == authorUid &&
        o.title == title &&
        o.subtitle == subtitle &&
        o.summary == summary &&
        o.genre == genre &&
        o.genreOptional == genreOptional &&
        o.language == language &&
        o.copyrights == copyrights &&
        o.isNSFW == isNSFW;
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
        isNSFW.hashCode;
  }
}
