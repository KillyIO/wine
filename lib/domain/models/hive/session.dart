import 'package:hive/hive.dart';

part 'session.g.dart';

/// @nodoc
@HiveType(typeId: 0)
class Session extends HiveObject {
  /// @nodoc
  Session({
    this.bio,
    this.createdAt,
    this.email,
    this.name,
    this.profilePictureURL,
    this.uid,
    this.updatedAt,
    this.username,
  });

  /// @nodoc
  factory Session.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Session(
      bio: map['bio'] as String,
      createdAt: map['createdAt'] as int,
      email: map['email'] as String,
      name: map['name'] as String,
      profilePictureURL: map['profilePictureURL'] as String,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as int,
      username: map['username'] as String,
    );
  }

  /// @nodoc
  @HiveField(0)
  String uid;

  /// @nodoc
  @HiveField(1)
  String name;

  /// @nodoc
  @HiveField(2)
  String username;

  /// @nodoc
  @HiveField(3)
  String email;

  /// @nodoc
  @HiveField(4)
  String profilePictureURL;

  /// @nodoc
  @HiveField(5)
  int createdAt;

  /// @nodoc
  @HiveField(6)
  int updatedAt;

  /// @nodoc
  @HiveField(7)
  String bio;

  /// @nodoc
  Session copyWith({
    bool isEmailVerified,
    int createdAt,
    int updatedAt,
    String bio,
    String email,
    String name,
    String profilePictureURL,
    String uid,
    String username,
  }) {
    return Session(
      bio: bio ?? this.bio,
      createdAt: createdAt ?? this.createdAt,
      email: email ?? this.email,
      name: name ?? this.name,
      profilePictureURL: profilePictureURL ?? this.profilePictureURL,
      uid: uid ?? this.uid,
      updatedAt: updatedAt ?? this.updatedAt,
      username: username ?? this.username,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'bio': bio,
      'createdAt': createdAt,
      'email': email,
      'name': name,
      'profilePictureURL': profilePictureURL,
      'uid': uid,
      'updatedAt': updatedAt,
      'username': username,
    };
  }

  @override
  String toString() {
    return '''
      Session(
        bio: $bio
        createdAt: $createdAt,
        email: $email,
        name: $name,
        profilePictureURL: $profilePictureURL,
        uid: $uid,
        updatedAt: $updatedAt,
        username: $username,
      )
    ''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Session &&
        other.bio == bio &&
        other.createdAt == createdAt &&
        other.email == email &&
        other.name == name &&
        other.profilePictureURL == profilePictureURL &&
        other.uid == uid &&
        other.updatedAt == updatedAt &&
        other.username == username;
  }

  @override
  int get hashCode {
    return bio.hashCode ^
        createdAt.hashCode ^
        email.hashCode ^
        name.hashCode ^
        profilePictureURL.hashCode ^
        uid.hashCode ^
        updatedAt.hashCode ^
        username.hashCode;
  }

  /// @nodoc
  bool get isEmpty {
    return createdAt == null &&
        email == null &&
        name == null &&
        uid == null &&
        updatedAt == null &&
        username == null;
  }

  /// @nodoc
  bool get isNotEmpty {
    return createdAt != null &&
        email != null &&
        name != null &&
        uid != null &&
        updatedAt != null &&
        username != null;
  }
}
