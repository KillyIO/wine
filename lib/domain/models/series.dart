class Series {
  String uid;

  Series({
    this.uid,
  });

  Series copyWith({
    String uid,
  }) {
    return Series(
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
    };
  }

  factory Series.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Series(
      uid: map['uid'] as String,
    );
  }

  @override
  String toString() => 'Series(uid: $uid)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Series && o.uid == uid;
  }

  @override
  int get hashCode => uid.hashCode;
}
