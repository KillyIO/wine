import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:wine/domain/settings/settings.dart';

part 'isar_settings.g.dart';

/// @nodoc
@Collection(accessor: 'settings')
class IsarSettings extends Equatable {
  /// @nodoc
  const IsarSettings({
    this.enableBranchesBookmarksCount,
    this.enableBranchesLikesCount,
    this.enableBranchesViewsCount,
    this.enableTreesBookmarksCount,
    this.enableTreesLikesCount,
    this.enableTreesViewsCount,
    this.id,
    required this.uid,
  });

  /// @nodoc
  factory IsarSettings.fromMap(Map<String, dynamic> map) {
    return IsarSettings(
      enableBranchesBookmarksCount: map['enableBranchesBookmarksCount'] as bool,
      enableBranchesLikesCount: map['enableBranchesLikesCount'] as bool,
      enableBranchesViewsCount: map['enableBranchesViewsCount'] as bool,
      enableTreesBookmarksCount: map['enableTreesBookmarksCount'] as bool,
      enableTreesLikesCount: map['enableTreesLikesCount'] as bool,
      enableTreesViewsCount: map['enableTreesViewsCount'] as bool,
      id: map['id'] as int,
      uid: map['uid'] as String,
    );
  }

  /// @nodoc
  final bool? enableBranchesBookmarksCount;

  /// @nodoc
  final bool? enableBranchesLikesCount;

  /// @nodoc
  final bool? enableBranchesViewsCount;

  /// @nodoc
  final bool? enableTreesBookmarksCount;

  /// @nodoc
  final bool? enableTreesLikesCount;

  /// @nodoc
  final bool? enableTreesViewsCount;

  /// @nodoc
  final int? id;

  /// @nodoc
  @Index()
  final String uid;

  /// @nodoc
  IsarSettings copyWith({
    bool? enableBranchesBookmarksCount,
    bool? enableBranchesLikesCount,
    bool? enableBranchesViewsCount,
    bool? enableTreesBookmarksCount,
    bool? enableTreesLikesCount,
    bool? enableTreesViewsCount,
    int? id,
    String? uid,
  }) {
    return IsarSettings(
      enableBranchesBookmarksCount:
          enableBranchesBookmarksCount ?? this.enableBranchesBookmarksCount,
      enableBranchesLikesCount:
          enableBranchesLikesCount ?? this.enableBranchesLikesCount,
      enableBranchesViewsCount:
          enableBranchesViewsCount ?? this.enableBranchesViewsCount,
      enableTreesBookmarksCount:
          enableTreesBookmarksCount ?? this.enableTreesBookmarksCount,
      enableTreesLikesCount:
          enableTreesLikesCount ?? this.enableTreesLikesCount,
      enableTreesViewsCount:
          enableTreesViewsCount ?? this.enableTreesViewsCount,
      id: id ?? this.id,
      uid: uid ?? this.uid,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableBranchesBookmarksCount': enableBranchesBookmarksCount,
      'enableBranchesLikesCount': enableBranchesLikesCount,
      'enableBranchesViewsCount': enableBranchesViewsCount,
      'enableTreesBookmarksCount': enableTreesBookmarksCount,
      'enableTreesLikesCount': enableTreesLikesCount,
      'enableTreesViewsCount': enableTreesViewsCount,
      'id': id,
      'uid': uid,
    };
  }

  /// @nodoc
  Settings toDomain() {
    return Settings(
      enableBranchesBookmarksCount: enableBranchesBookmarksCount,
      enableBranchesLikesCount: enableBranchesLikesCount,
      enableBranchesViewsCount: enableBranchesViewsCount,
      enableTreesBookmarksCount: enableTreesBookmarksCount,
      enableTreesLikesCount: enableTreesLikesCount,
      enableTreesViewsCount: enableTreesViewsCount,
    );
  }

  @override
  List<Object?> get props => [
        enableBranchesBookmarksCount,
        enableBranchesLikesCount,
        enableBranchesViewsCount,
        enableTreesBookmarksCount,
        enableTreesLikesCount,
        enableTreesViewsCount,
        id,
        uid,
      ];

  @override
  bool get stringify => true;
}
