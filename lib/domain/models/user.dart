import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User {
  String uid;
  String name;
  String username;
  String email;
  String profilePictureUrl;
  int createdAt;
  int updatedAt;
  String bio;

  User({
    this.uid,
    this.name,
    this.username,
    this.email,
    this.profilePictureUrl,
    this.createdAt,
    this.updatedAt,
    this.bio,
  });

  User copyWith({
    String uid,
    String name,
    String username,
    String email,
    String profilePictureUrl,
    int createdAt,
    int updatedAt,
    String bio,
  }) {
    return User(
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

  factory User.fromFirebaseUser(FirebaseUser user) {
    return User(
      uid: user.uid,
      name: user.displayName,
      username: null,
      email: user.email,
      profilePictureUrl: user.photoUrl,
      createdAt: null,
      updatedAt: null,
      bio: null,
    );
  }

  factory User.fromFirestore(DocumentSnapshot document) {
    final Map<String, dynamic> data = document.data;
    return User(
      uid: data['uid'] as String,
      name: data['name'] as String,
      username: data['username'] as String,
      email: data['email'] as String,
      profilePictureUrl: data['profilePictureUrl'] as String,
      createdAt: data['createdAt'] as int,
      updatedAt: data['updatedAt'] as int,
      bio: data['bio'] as String,
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

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
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
    return 'User(uid: $uid, name: $name, username: $username, email: $email, profilePictureUrl: $profilePictureUrl, createdAt: $createdAt, updatedAt: $updatedAt, bio: $bio)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is User &&
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
}
