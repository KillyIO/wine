import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_stringprocess/flutter_stringprocess.dart';
import 'package:utils/utils.dart';

/// @nodoc
final StringProcessor tps = StringProcessor();

/// @nodoc
class Series extends Equatable {
  /// @nodoc
  Series({
    this.authorUID,
    this.coverURL,
    this.createdAt,
    this.deletionReason,
    this.genre,
    this.genreOptional,
    this.isDeleted,
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
    if (document == null || document.data() == null) return null;

    final data = document.data();

    return Series(
      authorUID: data['authorUID'] as String,
      coverURL: data['coverURL'] as String,
      deletionReason: data['deletionReason'] as String,
      createdAt: data['createdAt'] as int,
      genre: data['genre'] as String,
      genreOptional: data['genreOptional'] as String,
      isDeleted: data['isDeleted'] as bool,
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
      coverURL: map['coverURL'] as String,
      createdAt: map['createdAt'] as int,
      deletionReason: map['deletionReason'] as String,
      genre: map['genre'] as String,
      genreOptional: map['genreOptional'] as String,
      isDeleted: map['isDeleted'] as bool,
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
      authorUID: authorUID ?? this.authorUID,
      coverURL: coverURL ?? this.coverURL,
      createdAt: createdAt ?? this.createdAt,
      deletionReason: deletionReason ?? this.deletionReason,
      genre: genre ?? this.genre,
      genreOptional: genreOptional ?? this.genreOptional,
      isDeleted: isDeleted ?? this.isDeleted,
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
      'coverURL': coverURL,
      'createdAt': createdAt,
      'deletionReason': deletionReason,
      'genre': genre,
      'genreOptional': genreOptional,
      'isDeleted': isDeleted,
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
      tps.getWordCount(summary) <= SeriesConstants.summaryMaxWords &&
      title != null &&
      title.isNotEmpty &&
      tps.getWordCount(title) <= SeriesConstants.titleMaxWords &&
      uid != null &&
      updatedAt != null;

  /// @nodoc
  bool get isSaveable => authorUID != null && uid != null;
}
