import 'package:cloud_firestore/cloud_firestore.dart';

/// @nodoc
class Count {
  /// @nodoc
  Count({
    this.count,
    this.uid,
    this.updatedAt,
  });

  /// @nodoc
  factory Count.fromFirestore(DocumentSnapshot document) {
    final data = document.data();
    return Count(
      count: data['count'] as int,
    );
  }

  /// @nodoc
  factory Count.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Count(
      count: map['count'] as int,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as int,
    );
  }

  /// @nodoc
  int count;

  /// @nodoc
  int updatedAt;

  /// @nodoc
  String uid;

  /// @nodoc
  Count copyWith({
    int count,
    int updatedAt,
    String uid,
  }) {
    return Count(
      count: count ?? this.count,
      uid: uid ?? this.uid,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'uid': uid,
      'updatedAt': updatedAt,
    };
  }

  @override
  String toString() => 'Count(count: $count, uid: $uid, updatedAt: $updatedAt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Count &&
        other.count == count &&
        other.uid == uid &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode => count.hashCode ^ uid.hashCode ^ updatedAt.hashCode;
}
