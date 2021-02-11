import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

/// @nodoc
class Count extends Equatable {
  /// @nodoc
  Count({
    this.count,
    this.uid,
    this.updatedAt,
  });

  /// @nodoc
  factory Count.fromFirestore(DocumentSnapshot document) {
    if (document == null || document.data() == null) return null;

    final data = document.data();

    return Count(
      count: data['count'] as int,
      uid: data['uid'] as String,
      updatedAt: data['updatedAt'] as int,
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
  final int count;

  /// @nodoc
  final int updatedAt;

  /// @nodoc
  final String uid;

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
  List<Object> get props => [count, uid];

  @override
  bool get stringify => true;
}
