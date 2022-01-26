import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/branch/body.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/branch/licence.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/infrastructure/core/converter.dart';

part 'branch_dto.freezed.dart';
part 'branch_dto.g.dart';

/// @nodoc
@freezed
class BranchDTO with _$BranchDTO {
  /// @nodoc
  factory BranchDTO({
    required String authorUID,
    required String body,
    required int bookmarksCount,
    required String coverURL,
    required List<String> genres,
    required int index,
    required bool isNSFW,
    required bool isPublished,
    required String language,
    required String licence,
    required int likesCount,
    required String? previousBranchUID,
    required String title,
    required String treeUID,
    required String uid,
    @ServerTimestampConverter() required FieldValue updatedAt,
    required int viewsCount,
  }) = _BranchDTO;

  /// @nodoc
  factory BranchDTO.fromDomain(Branch branch) {
    return BranchDTO(
      authorUID: branch.authorUID.getOrCrash(),
      body: branch.body.getOrCrash(),
      bookmarksCount: branch.bookmarksCount,
      coverURL: branch.coverURL.getOrCrash(),
      genres: branch.genres.map((g) => g.getOrCrash()).toList(),
      index: branch.index,
      isNSFW: branch.isNSFW,
      isPublished: branch.isPublished,
      language: branch.language.getOrCrash(),
      licence: branch.licence.getOrCrash(),
      likesCount: branch.likesCount,
      previousBranchUID: branch.previousBranchUID?.getOrCrash(),
      title: branch.title.getOrCrash(),
      treeUID: branch.treeUID.getOrCrash(),
      uid: branch.uid.getOrCrash(),
      updatedAt: FieldValue.serverTimestamp(),
      viewsCount: branch.viewsCount,
    );
  }

  /// @nodoc
  factory BranchDTO.fromJson(Map<String, dynamic> json) =>
      _$BranchDTOFromJson(json);

  /// @nodoc
  factory BranchDTO.fromFirestore(DocumentSnapshot doc) {
    return BranchDTO.fromJson(doc.data()! as Map<String, dynamic>);
  }
}

/// @nodoc
extension BranchDTOX on BranchDTO {
  /// @nodoc
  Branch toDomain() => Branch(
        authorUID: UniqueID.fromUniqueString(authorUID),
        body: Body(
          body.isEmpty
              ? body
              : Document.fromJson(jsonDecode(body) as List<dynamic>)
                  .toPlainText(),
          body.isEmpty
              ? <dynamic>[]
              : Document.fromJson(jsonDecode(body) as List<dynamic>)
                  .toDelta()
                  .toJson(),
        ),
        bookmarksCount: bookmarksCount,
        coverURL: CoverURL(coverURL),
        genres: genres.map(Genre.new).toList(),
        index: index,
        isNSFW: isNSFW,
        isPublished: isPublished,
        language: Language(language),
        licence: Licence(licence),
        likesCount: likesCount,
        previousBranchUID: UniqueID.fromUniqueString(previousBranchUID ?? ''),
        title: Title(title),
        treeUID: UniqueID.fromUniqueString(treeUID),
        uid: UniqueID.fromUniqueString(uid),
        viewsCount: viewsCount,
      );

  /// @nodoc
  Map<String, dynamic> toMap() => <String, dynamic>{
        'authorUID': authorUID,
        'body': body,
        'bookmarksCount': bookmarksCount,
        'coverURL': coverURL,
        'genres': genres,
        'index': index,
        'isNSFW': isNSFW,
        'isPublished': isPublished,
        'language': language,
        'licence': licence,
        'likesCount': likesCount,
        'previousBranchUID': previousBranchUID,
        'title': title,
        'treeUID': treeUID,
        'uid': uid,
        'viewsCount': viewsCount,
      };
}

/// @nodoc
extension BranchMapX on Map {
  /// @nodoc
  Branch toDomain() => Branch(
        body: Body(
          Document.fromJson(
            jsonDecode(this['body'] as String) as List<dynamic>,
          ).toPlainText(),
          Document.fromJson(
            jsonDecode(this['body'] as String) as List<dynamic>,
          ).toDelta().toJson(),
        ),
        authorUID: UniqueID.fromUniqueString(this['authorUID'] as String),
        bookmarksCount: this['bookmarksCount'] as int,
        coverURL: CoverURL(this['coverURL'] as String),
        genres: (this['genres'] as List<String>).map(Genre.new).toList(),
        index: this['index'] as int,
        isNSFW: this['isNSFW'] as bool,
        isPublished: this['isPublished'] as bool,
        language: Language(this['language'] as String),
        licence: Licence(this['licence'] as String),
        likesCount: this['likesCount'] as int,
        previousBranchUID:
            UniqueID.fromUniqueString(this['previousBranchUID'] as String),
        title: Title(this['title'] as String),
        treeUID: UniqueID.fromUniqueString(this['treeUID'] as String),
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        viewsCount: this['viewsCount'] as int,
      );
}
