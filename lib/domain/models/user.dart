import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

/// @nodoc
class User {
  /// @nodoc
  User({
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
  factory User.fromFirebaseUser(auth.User user) {
    return User(
      email: user.email,
      name: user.displayName,
      profilePictureURL: user.photoURL,
      uid: user.uid,
    );
  }

  /// @nodoc
  factory User.fromFirestore(DocumentSnapshot document) {
    final data = document.data();

    return User(
      bio: data['bio'] as String,
      createdAt: data['createdAt'] as int,
      email: data['email'] as String,
      name: data['name'] as String,
      profilePictureURL: data['profilePictureURL'] as String,
      uid: data['uid'] as String,
      updatedAt: data['updatedAt'] as int,
      username: data['username'] as String,
    );
  }

  /// @nodoc
  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
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
  int createdAt;

  /// @nodoc
  int updatedAt;

  /// @nodoc
  String bio;

  /// @nodoc
  String email;

  /// @nodoc
  String name;

  /// @nodoc
  String profilePictureURL;

  /// @nodoc
  String uid;

  /// @nodoc
  String username;

  /// @nodoc
  User copyWith({
    int createdAt,
    int updatedAt,
    String bio,
    String email,
    String name,
    String profilePictureURL,
    String uid,
    String username,
  }) {
    return User(
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
      User(
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

    return other is User &&
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
        updatedAt.hashCode ^
        username.hashCode ^
        uid.hashCode;
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
        updatedAt != null &&
        username != null &&
        uid != null;
  }
}
