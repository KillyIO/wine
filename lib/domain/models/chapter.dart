class Chapter {
  String uid;
  String seriesUid;
  String previousChapterUid;
  String authorUid;
  String title;
  String content;
  int index;
  String language;
  bool isNSFW;
  int createdAt;
  int updatedAt;

  Chapter({
    this.uid,
    this.seriesUid,
    this.previousChapterUid,
    this.authorUid,
    this.title,
    this.content,
    this.index,
    this.language,
    this.isNSFW,
    this.createdAt,
    this.updatedAt,
  });

  Chapter copyWith({
    String uid,
    String seriesUid,
    String previousChapterUid,
    String authorUid,
    String title,
    String content,
    int index,
    String language,
    bool isNSFW,
    int createdAt,
    int updatedAt,
  }) {
    return Chapter(
      uid: uid ?? this.uid,
      seriesUid: seriesUid ?? this.seriesUid,
      previousChapterUid: previousChapterUid ?? this.previousChapterUid,
      authorUid: authorUid ?? this.authorUid,
      title: title ?? this.title,
      content: content ?? this.content,
      index: index ?? this.index,
      language: language ?? this.language,
      isNSFW: isNSFW ?? this.isNSFW,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
      title: map['title'] as String,
      content: map['content'] as String,
      index: map['index'] as int,
      language: map['language'] as String,
      isNSFW: map['isNSFW'] as bool,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
    );
  }

  @override
  String toString() {
    return 'Chapter(uid: $uid, seriesUid: $seriesUid, previousChapterUid: $previousChapterUid, authorUid: $authorUid, title: $title, content: $content, index: $index, language: $language, isNSFW: $isNSFW, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Chapter &&
        o.uid == uid &&
        o.seriesUid == seriesUid &&
        o.previousChapterUid == previousChapterUid &&
        o.authorUid == authorUid &&
        o.title == title &&
        o.content == content &&
        o.index == index &&
        o.language == language &&
        o.isNSFW == isNSFW &&
        o.createdAt == createdAt &&
        o.updatedAt == updatedAt;
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
        isNSFW.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
