import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wine/models/session.dart';

class User {
  String uid;
  String name;
  String username;
  String email;
  String profilePictureUrl;
  String phoneNumber;
  bool isEmailVerified;
  int createdAt;
  int updatedAt;
  String bio;

  User({
    this.uid,
    this.name,
    this.username,
    this.email,
    this.profilePictureUrl,
    this.phoneNumber,
    this.isEmailVerified,
    this.createdAt,
    this.updatedAt,
    this.bio,
  });

  factory User.fromFirebaseUser(FirebaseUser user) {
    return User(
      uid: user.uid,
      name: user.displayName,
      username: null,
      email: user.email,
      profilePictureUrl: user.photoUrl,
      phoneNumber: user.phoneNumber,
      isEmailVerified: user.isEmailVerified,
      createdAt: null,
      updatedAt: null,
      bio: null,
    );
  }

  factory User.fromMap(Map map) {
    return User(
      uid: map['uid'],
      name: map['name'],
      username: map['username'],
      email: map['email'],
      profilePictureUrl: map['profilePictureUrl'],
      phoneNumber: map['phoneNumber'],
      isEmailVerified: map['isEmailVerified'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      bio: map['bio'],
    );
  }

  factory User.fromFirestore(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data;
    return User(
      uid: data['uid'],
      name: data['name'],
      username: data['username'],
      email: data['email'],
      profilePictureUrl: data['profilePictureUrl'],
      phoneNumber: data['phoneNumber'],
      isEmailVerified: data['isEmailVerified'],
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
      bio: data['bio'],
    );
  }

  Session toSession() {
    return Session(
      uid: uid,
      name: name,
      username: username,
      email: email,
      profilePictureUrl: profilePictureUrl,
      phoneNumber: phoneNumber,
      isEmailVerified: isEmailVerified,
      createdAt: createdAt,
      updatedAt: updatedAt,
      bio: bio,
    );
  }

  Map toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['uid'] = uid;
    map['name'] = name;
    map['username'] = username;
    map['email'] = email;
    map['profilePictureUrl'] = profilePictureUrl;
    map['phoneNumber'] = phoneNumber;
    map['isEmailVerified'] = isEmailVerified;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    map['bio'] = bio;
    return map;
  }

  @override
  String toString() {
    return '''
      uid: $uid,
      name: $name,
      username: $username,
      email: $email,
      profilePictureUrl: $profilePictureUrl,
      phoneNumber: $phoneNumber,
      isEmailVerified: $isEmailVerified,
      createdAt: $createdAt,
      updatedAt: $updatedAt,
      bio: $bio,
    ''';
  }
}
