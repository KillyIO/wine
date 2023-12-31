import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';

part 'isar_user.g.dart';

@Collection(accessor: 'users', inheritance: false)
class IsarUser extends Equatable {
  const IsarUser({
    required this.emailAddress,
    required this.uid,
    required this.updatedAt,
    required this.username,
    this.id = Isar.autoIncrement,
  });

  factory IsarUser.fromMap(Map<String, dynamic> map) {
    return IsarUser(
      emailAddress: map['emailAddress'] as String,
      id: map['id'] as int,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as DateTime,
      username: map['username'] as String,
    );
  }

  final String emailAddress;

  final Id? id;

  @Index(unique: true)
  final String uid;

  final DateTime updatedAt;

  final String username;

  IsarUser copyWith({
    String? emailAddress,
    int? id,
    String? uid,
    DateTime? updatedAt,
    String? username,
  }) {
    return IsarUser(
      emailAddress: emailAddress ?? this.emailAddress,
      id: id ?? this.id,
      uid: uid ?? this.uid,
      updatedAt: updatedAt ?? this.updatedAt,
      username: username ?? this.username,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'id': id,
      'uid': uid,
      'updatedAt': updatedAt,
      'username': username,
    };
  }

  User toDomain() {
    return User(
      emailAddress: EmailAddress(emailAddress),
      uid: UniqueID.fromUniqueString(uid),
      username: Username(username),
    );
  }

  @override
  @ignore
  List<Object?> get props => [emailAddress, id, uid, updatedAt, username];

  @override
  bool get stringify => true;
}
