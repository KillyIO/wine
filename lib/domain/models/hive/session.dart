import 'package:hive/hive.dart';

part 'session.g.dart';

@HiveType(typeId: 0)
class Session extends HiveObject {
  @HiveField(0)
  String uid;

  @HiveField(1)
  String name;

  @HiveField(2)
  String username;

  @HiveField(3)
  String email;

  @HiveField(4)
  String profilePictureUrl;

  @HiveField(5)
  int createdAt;

  @HiveField(6)
  int updatedAt;

  @HiveField(7)
  String bio;

  Session({
    this.uid,
    this.name,
    this.username,
    this.email,
    this.profilePictureUrl,
    this.createdAt,
    this.updatedAt,
    this.bio,
  });

  Session copyWith({
    String uid,
    String name,
    String username,
    String email,
    String profilePictureUrl,
    bool isEmailVerified,
    int createdAt,
    int updatedAt,
    String bio,
  }) {
    return Session(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      username: username ?? this.username,
      email: email ?? this.email,
      profilePictureUrl: profilePictureUrl ?? this.profilePictureUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      bio: bio ?? this.bio,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'username': username,
      'email': email,
      'profilePictureUrl': profilePictureUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'bio': bio,
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Session(
      uid: map['uid'] as String,
      name: map['name'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      profilePictureUrl: map['profilePictureUrl'] as String,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
      bio: map['bio'] as String,
    );
  }

  @override
  String toString() {
    return 'Session(uid: $uid, name: $name, username: $username, email: $email, profilePictureUrl: $profilePictureUrl, createdAt: $createdAt, updatedAt: $updatedAt, bio: $bio)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Session &&
        o.uid == uid &&
        o.name == name &&
        o.username == username &&
        o.email == email &&
        o.profilePictureUrl == profilePictureUrl &&
        o.createdAt == createdAt &&
        o.updatedAt == updatedAt &&
        o.bio == bio;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        name.hashCode ^
        username.hashCode ^
        email.hashCode ^
        profilePictureUrl.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode ^
        bio.hashCode;
  }

  bool get isEmpty {
    return uid == null && name == null && username == null && email == null && createdAt == null && updatedAt == null;
  }

  bool get isNotEmpty {
    return uid != null && name != null && username != null && email != null && createdAt != null && updatedAt != null;
  }
}
