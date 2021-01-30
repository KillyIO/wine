import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

/// @nodoc
class Series extends Equatable {
  /// @nodoc
  Series({
    this.authorUID,
    this.authorUsername,
    this.coverURL,
    this.createdAt,
    this.genre,
    this.genreOptional,
    this.isNSFW,
    this.language,
    this.subtitle,
    this.summary,
    this.title,
    this.uid,
    this.updatedAt,
  });

  /// @nodoc
  factory Series.fromFirestore(DocumentSnapshot document) {
    final data = document.data();

    return Series(
      authorUID: data['authorUID'] as String,
      authorUsername: data['authorUsername'] as String,
      coverURL: data['coverURL'] as String,
      createdAt: data['createdAt'] as int,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      isNSFW: data['isNSFW'] as bool,
      language: data['language'] as String,
      subtitle: data['subtitle'] as String,
      summary: data['summary'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
      updatedAt: data['updatedAt'] as int,
    );
  }

  /// @nodoc
  factory Series.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Series(
      authorUID: map['authorUID'] as String,
      authorUsername: map['authorUsername'] as String,
      coverURL: map['coverURL'] as String,
      createdAt: map['createdAt'] as int,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      isNSFW: map['isNSFW'] as bool,
      language: map['language'] as String,
      subtitle: map['subtitle'] as String,
      summary: map['summary'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
      updatedAt: map['updatedAt'] as int,
    );
  }

  /// @nodoc
  final bool isNSFW;

  /// @nodoc
  final int createdAt;

  /// @nodoc
  final int updatedAt;

  /// @nodoc
  final String authorUID;

  /// @nodoc
  final String authorUsername;

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final String genre;

  /// @nodoc
  final String genreOptional;

  /// @nodoc
  final String language;

  /// @nodoc
  final String subtitle;

  /// @nodoc
  final String summary;

  /// @nodoc
  final String title;

  /// @nodoc
  final String uid;

  /// @nodoc
  Series copyWith({
    bool isNSFW,
    int createdAt,
    int updatedAt,
    String authorUID,
    String authorUsername,
    String coverURL,
    String genre,
    String genreOptional,
    String language,
    String subtitle,
    String summary,
    String title,
    String uid,
  }) {
    return Series(
      authorUID: authorUID ?? this.authorUID,
      authorUsername: authorUsername ?? this.authorUsername,
      coverURL: coverURL ?? this.coverURL,
      createdAt: createdAt ?? this.createdAt,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      isNSFW: isNSFW ?? this.isNSFW,
      language: language ?? this.language,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      title: title ?? this.title,
      uid: uid ?? this.uid,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'authorUID': authorUID,
      'authorUsername': authorUsername,
      'coverURL': coverURL,
      'createdAt': createdAt,
      'genre': genre,
      'genreOptional': genreOptional,
      'isNSFW': isNSFW,
      'language': language,
      'subtitle': subtitle,
      'summary': summary,
      'title': title,
      'uid': uid,
      'updatedAt': updatedAt,
    };
  }

  @override
  List<Object> get props => [authorUID, uid];

  @override
  bool get stringify => true;

  /// @nodoc
  bool get isEmpty {
    return authorUsername == null &&
        authorUID == null &&
        coverURL == null &&
        createdAt == null &&
        genre == null &&
        isNSFW == null &&
        language == null &&
        summary == null &&
        title == null &&
        uid == null &&
        updatedAt == null;
  }

  /// @nodoc
  bool get isNotEmpty {
    return authorUID != null &&
        authorUsername != null &&
        coverURL != null &&
        createdAt != null &&
        genre != null &&
        isNSFW != null &&
        language != null &&
        summary != null &&
        title != null &&
        uid != null &&
        updatedAt != null;
  }
}
