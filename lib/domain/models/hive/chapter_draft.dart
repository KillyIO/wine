import 'package:hive/hive.dart';

part 'chapter_draft.g.dart';

@HiveType(typeId: 3)
class ChapterDraft extends HiveObject {
  @HiveField(0)
  String uid;

  ChapterDraft({
    this.uid,
  });

  ChapterDraft copyWith({
    String uid,
  }) {
    return ChapterDraft(
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
    };
  }

  factory ChapterDraft.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ChapterDraft(
      uid: map['uid'] as String,
    );
  }

  @override
  String toString() => 'ChapterDraft(uid: $uid)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ChapterDraft && o.uid == uid;
  }

  @override
  int get hashCode => uid.hashCode;
}
