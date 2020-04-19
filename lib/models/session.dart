import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';
import 'package:wine/models/user.dart';

part 'session.g.dart';

@HiveType(typeId: 1)
class Session extends HiveObject {
  @HiveField(0)
  String uid;

  @HiveField(1)
  bool isAnonymous;

  @HiveField(2)
  String name;

  @HiveField(3)
  String username;

  @HiveField(4)
  String email;

  @HiveField(5)
  String profilePictureUrl;

  @HiveField(6)
  String phoneNumber;

  @HiveField(7)
  bool isEmailVerified;

  @HiveField(8)
  int createdAt;

  @HiveField(9)
  int updatedAt;

  @HiveField(10)
  String bio;

  Session({
    this.uid,
    this.isAnonymous,
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

  factory Session.fromUser(User user) {
    return Session(
      uid: user.uid,
      name: user.name,
      username: user.username,
      email: user.email,
      profilePictureUrl: user.profilePictureUrl,
      phoneNumber: user.phoneNumber,
      isEmailVerified: user.isEmailVerified,
      createdAt: user.createdAt,
      updatedAt: user.updatedAt,
      bio: user.bio,
    );
  }

  factory Session.fromFirestore(DocumentSnapshot document) {
    Map data = document.data;
    return Session(
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

  User toUser() {
    return User(
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

  @override
  String toString() {
    return '''
      uid: $uid,
      isAnonymous: $isAnonymous,
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
