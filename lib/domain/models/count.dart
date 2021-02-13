import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

/// @nodoc
class Count extends Equatable {
  /// @nodoc
  Count({
    this.count,
    this.updatedAt,
    this.uid,
  });

  /// @nodoc
  factory Count.fromFirestore(DocumentSnapshot document) {
    if (document == null || document.data() == null) return null;

    final data = document.data();

    return Count(
      count: data['count'] as int,
      updatedAt: data['updatedAt'] as int,
      uid: data['uid'] as String,
    );
  }

  /// @nodoc
  factory Count.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Count(
      count: map['count'] as int,
      updatedAt: map['updatedAt'] as int,
      uid: map['uid'] as String,
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
      updatedAt: updatedAt ?? this.updatedAt,
      uid: uid ?? this.uid,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'updatedAt': updatedAt,
      'uid': uid,
    };
  }

  @override
  List<Object> get props => [count, uid];

  @override
  bool get stringify => true;
}
