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
  String story;

  @HiveField(6)
  int index;

  @HiveField(7)
  String language;

  @HiveField(8)
  String copyrights;

  @HiveField(9)
  bool isNSFW;

  @HiveField(10)
  bool isEnd;

  @HiveField(11)
  String genre;

  @HiveField(12)
  String genreOptional;

  @HiveField(13)
  String coverUrl;

  @HiveField(14)
  String authorUsername;

  ChapterDraft({
    this.uid,
    this.seriesUid,
    this.previousChapterUid,
    this.authorUid,
    this.title,
    this.story,
    this.index,
    this.language,
    this.copyrights,
    this.isNSFW,
    this.isEnd,
    this.genre,
    this.genreOptional,
    this.coverUrl,
    this.authorUsername,
  });

  ChapterDraft copyWith({
    String uid,
    String seriesUid,
    String previousChapterUid,
    String authorUid,
    String title,
    String story,
    int index,
    String language,
    String copyrights,
    bool isNSFW,
    bool isEnd,
    String genre,
    String genreOptional,
    String coverUrl,
    String authorUsername,
  }) {
    return ChapterDraft(
      uid: uid ?? this.uid,
      seriesUid: seriesUid ?? this.seriesUid,
      previousChapterUid: previousChapterUid ?? this.previousChapterUid,
      authorUid: authorUid ?? this.authorUid,
      title: title ?? this.title,
      story: story ?? this.story,
      index: index ?? this.index,
      language: language ?? this.language,
      copyrights: copyrights ?? this.copyrights,
      isNSFW: isNSFW ?? this.isNSFW,
      isEnd: isEnd ?? this.isEnd,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      coverUrl: coverUrl ?? this.coverUrl,
      authorUsername: authorUsername ?? this.authorUsername,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'seriesUid': seriesUid,
      'previousChapterUid': previousChapterUid,
      'authorUid': authorUid,
      'title': title,
      'story': story,
      'index': index,
      'language': language,
      'copyrights': copyrights,
      'isNSFW': isNSFW,
      'isEnd': isEnd,
      'genre': genre,
      'genreOptional': genreOptional,
      'coverUrl': coverUrl,
      'authorUsername': authorUsername,
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
      story: map['story'] as String,
      index: map['index'] as int,
      language: map['language'] as String,
      copyrights: map['copyrights'] as String,
      isNSFW: map['isNSFW'] as bool,
      isEnd: map['isEnd'] as bool,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      coverUrl: map['coverUrl'] as String,
      authorUsername: map['authorUsername'] as String,
    );
  }

  @override
  String toString() {
    return 'ChapterDraft(uid: $uid, seriesUid: $seriesUid, previousChapterUid: $previousChapterUid, authorUid: $authorUid, title: $title, story: $story, index: $index, language: $language, copyrights: $copyrights, isNSFW: $isNSFW, isEnd: $isEnd, genre: $genre, genreOptional: $genreOptional, coverUrl: $coverUrl, authorUsername: $authorUsername)';
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
        o.story == story &&
        o.index == index &&
        o.language == language &&
        o.copyrights == copyrights &&
        o.isNSFW == isNSFW &&
        o.isEnd == isEnd &&
        o.genre == genre &&
        o.genreOptional == genreOptional &&
        o.coverUrl == coverUrl &&
        o.authorUsername == authorUsername;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        seriesUid.hashCode ^
        previousChapterUid.hashCode ^
        authorUid.hashCode ^
        title.hashCode ^
        story.hashCode ^
        index.hashCode ^
        language.hashCode ^
        copyrights.hashCode ^
        isNSFW.hashCode ^
        isEnd.hashCode ^
        genre.hashCode ^
        genreOptional.hashCode ^
        coverUrl.hashCode ^
        authorUsername.hashCode;
  }

  bool get isEmpty {
    return uid == null &&
        seriesUid == null &&
        authorUid == null &&
        title == null &&
        story == null &&
        index == null &&
        language == null &&
        copyrights == null &&
        isNSFW == null &&
        isEnd == null &&
        genre == null &&
        coverUrl == null &&
        authorUsername == null;
  }

  bool get isNotEmpty {
    return uid != null &&
        seriesUid != null &&
        authorUid != null &&
        title != null &&
        story != null &&
        index != null &&
        language != null &&
        copyrights != null &&
        isNSFW != null &&
        isEnd != null &&
        genre != null &&
        coverUrl != null &&
        authorUsername != null;
  }
}
