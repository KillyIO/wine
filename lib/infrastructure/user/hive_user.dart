import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';

part 'hive_user.g.dart';

/// @nodoc
@HiveType(typeId: 0)
class HiveUser extends Equatable {
  /// @nodoc
  const HiveUser({
    this.emailAddress,
    this.uid,
    this.username,
  });

  /// @nodoc
  factory HiveUser.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return HiveUser(
      emailAddress: ['emailAddress'] as String,
      uid: ['uid'] as String,
      username: ['username'] as String,
    );
  }

  /// @nodoc
  @HiveField(0)
  final String emailAddress;

  /// @nodoc
  @HiveField(1)
  final String uid;

  /// @nodoc
  @HiveField(2)
  final String username;

  /// @nodoc
  HiveUser copyWith({
    String emailAddress,
    String uid,
    String username,
  }) {
    return HiveUser(
      emailAddress: emailAddress ?? this.emailAddress,
      uid: uid ?? this.uid,
      username: username ?? this.username,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': emailAddress,
      'uid': uid,
      'username': username,
    };
  }

  /// @nodoc
  User toDomain() {
    return User(
      emailAddress: EmailAddress(emailAddress),
      uid: UniqueID.fromUniqueString(uid),
      username: Username(username),
    );
  }

  @override
  List<Object> get props => [
        emailAddress,
        uid,
        username,
      ];

  @override
  bool get stringify => true;
}
