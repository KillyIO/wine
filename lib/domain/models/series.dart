import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_stringprocess/flutter_stringprocess.dart';
import 'package:wine/utils/constants/series.dart';

/// @nodoc
class Series extends Equatable {
  /// @nodoc
  Series({
    this.isDeleted,
    this.isNSFW,
    this.createdAt,
    this.updatedAt,
    this.authorUID,
    this.coverURL,
    this.deletionReason,
    this.genre,
    this.genreOptional,
    this.language,
    this.subtitle,
    this.summary,
    this.title,
    this.uid,
  });

  /// @nodoc
  factory Series.fromFirestore(DocumentSnapshot document) {
    if (document == null || document.data() == null) return null;

    final data = document.data();

    return Series(
      isDeleted: data['isDeleted'] as bool,
      isNSFW: data['isNSFW'] as bool,
      createdAt: data['createdAt'] as int,
      updatedAt: data['updatedAt'] as int,
      authorUID: data['authorUID'] as String,
      coverURL: data['coverURL'] as String,
      deletionReason: data['deletionReason'] as String,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      language: data['language'] as String,
      subtitle: data['subtitle'] as String,
      summary: data['summary'] as String,
      title: data['title'] as String,
      uid: data['uid'] as String,
    );
  }

  /// @nodoc
  factory Series.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Series(
      isDeleted: map['isDeleted'] as bool,
      isNSFW: map['isNSFW'] as bool,
      createdAt: map['createdAt'] as int,
      updatedAt: map['updatedAt'] as int,
      authorUID: map['authorUID'] as String,
      coverURL: map['coverURL'] as String,
      deletionReason: map['deletionReason'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      language: map['language'] as String,
      subtitle: map['subtitle'] as String,
      summary: map['summary'] as String,
      title: map['title'] as String,
      uid: map['uid'] as String,
    );
  }

  /// @nodoc
  final bool isDeleted;

  /// @nodoc
  final bool isNSFW;

  /// @nodoc
  final int createdAt;

  /// @nodoc
  final int updatedAt;

  /// @nodoc
  final String authorUID;

  /// @nodoc
  final String coverURL;

  /// @nodoc
  final String deletionReason;

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
    bool isDeleted,
    bool isNSFW,
    int createdAt,
    int updatedAt,
    String authorUID,
    String coverURL,
    String deletionReason,
    String genre,
    String genreOptional,
    String language,
    String subtitle,
    String summary,
    String title,
    String uid,
  }) {
    return Series(
      isDeleted: isDeleted ?? this.isDeleted,
      isNSFW: isNSFW ?? this.isNSFW,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      authorUID: authorUID ?? this.authorUID,
      coverURL: coverURL ?? this.coverURL,
      deletionReason: deletionReason ?? this.deletionReason,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      language: language ?? this.language,
      subtitle: subtitle ?? this.subtitle,
      summary: summary ?? this.summary,
      title: title ?? this.title,
      uid: uid ?? this.uid,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'isDeleted': isDeleted,
      'isNSFW': isNSFW,
      'authorUID': authorUID,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'coverURL': coverURL,
      'deletionReason': deletionReason,
      'genre': genre,
      'genreOptional': genreOptional,
      'language': language,
      'subtitle': subtitle,
      'summary': summary,
      'title': title,
      'uid': uid,
    };
  }

  @override
  List<Object> get props => [authorUID, uid];

  @override
  bool get stringify => true;

  /// @nodoc
  bool get isPublishable =>
      authorUID != null &&
      coverURL != null &&
      createdAt != null &&
      genre != null &&
      isDeleted != null &&
      isNSFW != null &&
      language != null &&
      summary != null &&
      summary.isNotEmpty &&
      StringProcessor().getWordCount(summary) <= seriesSummaryMaxWords &&
      title != null &&
      title.isNotEmpty &&
      StringProcessor().getWordCount(title) <= seriesTitleMaxWords &&
      uid != null &&
      updatedAt != null;

  /// @nodoc
  bool get isSaveable => authorUID != null && uid != null;
}
