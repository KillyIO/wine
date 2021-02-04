part of 'models.dart';

/// @nodoc
class User extends Equatable {
  /// @nodoc
  User({
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
  factory User.fromFirebaseUser(auth.User user) {
    if (user == null) return null;

    return User(
      email: user.email,
      name: user.displayName,
      profilePictureURL: user.photoURL,
      uid: user.uid,
    );
  }

  /// @nodoc
  factory User.fromFirestore(DocumentSnapshot document) {
    if (document == null) return null;

    final data = document.data();
    if (data == null) return null;

    return User(
      isBanned: data['isBanned'],
      isDeleted: data['isDeleted'],
      banDeadline: data['banDeadline'],
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
      banReason: data['banReason'],
      bio: data['bio'],
      deletionReason: data['deletionReason'],
      email: data['email'],
      name: data['name'],
      profilePictureURL: data['profilePictureURL'],
      uid: data['uid'],
      username: data['username'],
    );
  }

  /// @nodoc
  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
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
  final bool isBanned;

  /// Whether the user is deleted or not.
  /// [deletionReason] must not be null if [isBanned] not null.
  final bool isDeleted;

  /// Deadline for the ban (in milliseconds).
  /// [isBanned] and [banReason] must not be null if [banDeadline] not null.
  final int banDeadline;

  /// The date on which the user signed up (in milliseconds).
  final int createdAt;

  /// Last time the user updated his profile or logged in (in milliseconds).
  final int updatedAt;

  /// The reason the user was banned.
  /// [isBanned] and [banDeadline] must not be null if [banReason] not null.
  final String banReason;

  /// @nodoc
  final String bio;

  /// The reason the user account was deleted.
  /// [isDeleted] must not be null if [deletionReason] not null.
  final String deletionReason;

  /// @nodoc
  final String email;

  /// @nodoc
  final String name;

  /// @nodoc
  final String profilePictureURL;

  /// @nodoc
  final String uid;

  /// @nodoc
  final String username;

  /// @nodoc
  User copyWith({
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
    return User(
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
