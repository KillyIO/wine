import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Leaf;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/core/converter.infrastructure.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/features/branch/leaf.domain.dart';
import 'package:wine/features/branch/licence.domain.dart';
import 'package:wine/features/branch/licence_type.domain.dart';

part 'branch_dto.infrastructure.freezed.dart';
part 'branch_dto.infrastructure.g.dart';

/// @nodoc
@freezed
class BranchDTO with _$BranchDTO {
  /// @nodoc
  factory BranchDTO({
    required String authorUID,
    required int bookmarksCount,
    required String coverURL,
    required List<String> genres,
    required int index,
    required bool isNSFW,
    required bool isPublished,
    required String language,
    required String leaf,
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
      bookmarksCount: branch.bookmarksCount,
      coverURL: branch.coverURL.getOrCrash(),
      genres: branch.genres.map((g) => g.getOrCrash()).toList(),
      index: branch.index,
      isNSFW: branch.isNSFW,
      isPublished: branch.isPublished,
      language: branch.language.getOrCrash(),
      leaf: branch.leaf.getOrCrash(),
      licence: branch.licence.getOrCrash().name,
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
        bookmarksCount: bookmarksCount,
        coverURL: CoverURL(coverURL),
        genres: genres.map(Genre.new).toList(),
        index: index,
        isNSFW: isNSFW,
        isPublished: isPublished,
        language: Language(language),
        leaf: Leaf(
          leaf.isEmpty
              ? leaf
              : Document.fromJson(jsonDecode(leaf) as List<dynamic>)
                  .toPlainText(),
          leaf.isEmpty
              ? <dynamic>[]
              : Document.fromJson(jsonDecode(leaf) as List<dynamic>)
                  .toDelta()
                  .toJson(),
        ),
        licence:
            Licence(LicenceType.values.singleWhere((e) => e.name == licence)),
        likesCount: likesCount,
        previousBranchUID: previousBranchUID != null
            ? UniqueID.fromUniqueString(previousBranchUID!)
            : null,
        title: Title(title),
        treeUID: UniqueID.fromUniqueString(treeUID),
        uid: UniqueID.fromUniqueString(uid),
        viewsCount: viewsCount,
      );

  /// @nodoc
  Map<String, dynamic> toMap() => <String, dynamic>{
        'authorUID': authorUID,
        'bookmarksCount': bookmarksCount,
        'coverURL': coverURL,
        'genres': genres,
        'index': index,
        'isNSFW': isNSFW,
        'isPublished': isPublished,
        'language': language,
        'leaf': leaf,
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
extension BranchMapX on Map<dynamic, dynamic> {
  /// @nodoc
  Branch toDomain() => Branch(
        authorUID: UniqueID.fromUniqueString(this['authorUID'] as String),
        bookmarksCount: this['bookmarksCount'] as int,
        coverURL: CoverURL(this['coverURL'] as String),
        genres: (this['genres'] as List<String>).map(Genre.new).toList(),
        index: this['index'] as int,
        isNSFW: this['isNSFW'] as bool,
        isPublished: this['isPublished'] as bool,
        language: Language(this['language'] as String),
        leaf: Leaf(
          Document.fromJson(
            jsonDecode(this['leaf'] as String) as List<dynamic>,
          ).toPlainText(),
          Document.fromJson(
            jsonDecode(this['leaf'] as String) as List<dynamic>,
          ).toDelta().toJson(),
        ),
        licence: Licence(
          LicenceType.values
              .singleWhere((e) => e.name == this['licence'] as String),
        ),
        likesCount: this['likesCount'] as int,
        previousBranchUID: this['previousBranchUID'] != null
            ? UniqueID.fromUniqueString(this['previousBranchUID'] as String)
            : null,
        title: Title(this['title'] as String),
        treeUID: UniqueID.fromUniqueString(this['treeUID'] as String),
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        viewsCount: this['viewsCount'] as int,
      );
}
