part of 'models.dart';

class User extends Equatable {
  User({
    this.uid,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      uid: map['uid'],
    );
  }

  final String uid;

  User copyWith({
    String uid,
  }) {
    return User(
      uid: uid ?? this.uid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
    };
  }

  @override
  List<Object> get props => [uid];

  @override
  bool get stringify => true;

  bool get isEmpty => uid == null;
}
