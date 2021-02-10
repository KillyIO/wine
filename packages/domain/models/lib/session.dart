import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'session.g.dart';

/// @nodoc
@HiveType(typeId: 0)
class Session extends Equatable {
  /// @nodoc
  Session({
    this.isBanned,
    this.isDeleted,
    this.banDeadline,
    this.createdAt,
    this.updatedAt,
    this.banReason,
    this.bio,
    this.deletionReason,
    this.email,
    this.name,
    this.profilePictureURL,
    this.uid,
    this.username,
  });

  /// @nodoc
  factory Session.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Session(
      isBanned: map['isBanned'],
      isDeleted: map['isDeleted'],
      banDeadline: map['banDeadline'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      banReason: map['banReason'],
      bio: map['bio'],
      deletionReason: map['deletionReason'],
      email: map['email'],
      name: map['name'],
      profilePictureURL: map['profilePictureURL'],
      uid: map['uid'],
      username: map['username'],
    );
  }

  /// Whether the user is banned or not.
  /// [banReason] and [banDeadline] must not be null if [isBanned] is true.
  @HiveField(0)
  final bool isBanned;

  /// Whether the user is deleted or not.
  /// [deletionReason] must not be null if [isBanned] not null.
  @HiveField(1)
  final bool isDeleted;

  /// Deadline for the ban (in milliseconds).
  /// [isBanned] and [banReason] must not be null if [banDeadline] not null.
  @HiveField(2)
  final int banDeadline;

  /// The date on which the user signed up (in milliseconds).
  @HiveField(3)
  final int createdAt;

  /// Last time the user updated his profile or logged in (in milliseconds).
  @HiveField(4)
  final int updatedAt;

  /// The reason the user was banned.
  /// [isBanned] and [banDeadline] must not be null if [banReason] not null.
  @HiveField(5)
  final String banReason;

  /// @nodoc
  @HiveField(6)
  final String bio;

  /// The reason the user account was deleted.
  /// [isDeleted] must not be null if [deletionReason] not null.
  @HiveField(7)
  final String deletionReason;

  /// @nodoc
  @HiveField(8)
  final String email;

  /// @nodoc
  @HiveField(9)
  final String name;

  /// @nodoc
  @HiveField(10)
  final String profilePictureURL;

  /// @nodoc
  @HiveField(11)
  final String uid;

  /// @nodoc
  @HiveField(12)
  final String username;

  /// @nodoc
  Session copyWith({
    bool isBanned,
    bool isDeleted,
    int banDeadline,
    int createdAt,
    int updatedAt,
    String banReason,
    String bio,
    String deletionReason,
    String email,
    String name,
    String profilePictureURL,
    String uid,
    String username,
  }) {
    return Session(
      isBanned: isBanned ?? this.isBanned,
      isDeleted: isDeleted ?? this.isDeleted,
      banDeadline: banDeadline ?? this.banDeadline,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      banReason: banReason ?? this.banReason,
      bio: bio ?? this.bio,
      deletionReason: deletionReason ?? this.deletionReason,
      email: email ?? this.email,
      name: name ?? this.name,
      profilePictureURL: profilePictureURL ?? this.profilePictureURL,
      uid: uid ?? this.uid,
      username: username ?? this.username,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'isBanned': isBanned,
      'isDeleted': isDeleted,
      'banDeadline': banDeadline,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'banReason': banReason,
      'bio': bio,
      'deletionReason': deletionReason,
      'email': email,
      'name': name,
      'profilePictureURL': profilePictureURL,
      'uid': uid,
      'username': username,
    };
  }

  @override
  List<Object> get props => [uid];

  @override
  bool get stringify => true;

  /// Check if the user account is complete.
  bool get isComplete =>
      isBanned != null &&
      isDeleted != null &&
      createdAt != null &&
      updatedAt != null &&
      email != null &&
      name != null &&
      uid != null &&
      username != null;
}
