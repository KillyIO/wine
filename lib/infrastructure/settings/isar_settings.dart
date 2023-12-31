import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:wine/domain/settings/settings.dart';

part 'isar_settings.g.dart';

@Collection(accessor: 'settings', inheritance: false)
class IsarSettings extends Equatable {
  const IsarSettings({
    this.enableBranchesBookmarksCount,
    this.enableBranchesLikesCount,
    this.enableBranchesViewsCount,
    this.enableTreesBookmarksCount,
    this.enableTreesLikesCount,
    this.enableTreesViewsCount,
    this.id = Isar.autoIncrement,
  });

  factory IsarSettings.fromMap(Map<String, dynamic> map) {
    return IsarSettings(
      enableBranchesBookmarksCount: map['enableBranchesBookmarksCount'] as bool,
      enableBranchesLikesCount: map['enableBranchesLikesCount'] as bool,
      enableBranchesViewsCount: map['enableBranchesViewsCount'] as bool,
      enableTreesBookmarksCount: map['enableTreesBookmarksCount'] as bool,
      enableTreesLikesCount: map['enableTreesLikesCount'] as bool,
      enableTreesViewsCount: map['enableTreesViewsCount'] as bool,
      id: map['id'] as int,
    );
  }

  final bool? enableBranchesBookmarksCount;

  final bool? enableBranchesLikesCount;

  final bool? enableBranchesViewsCount;

  final bool? enableTreesBookmarksCount;

  final bool? enableTreesLikesCount;

  final bool? enableTreesViewsCount;

  final Id id;

  IsarSettings copyWith({
    bool? enableBranchesBookmarksCount,
    bool? enableBranchesLikesCount,
    bool? enableBranchesViewsCount,
    bool? enableTreesBookmarksCount,
    bool? enableTreesLikesCount,
    bool? enableTreesViewsCount,
    int? id,
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
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableBranchesBookmarksCount': enableBranchesBookmarksCount,
      'enableBranchesLikesCount': enableBranchesLikesCount,
      'enableBranchesViewsCount': enableBranchesViewsCount,
      'enableTreesBookmarksCount': enableTreesBookmarksCount,
      'enableTreesLikesCount': enableTreesLikesCount,
      'enableTreesViewsCount': enableTreesViewsCount,
      'id': id,
    };
  }

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
  @ignore
  List<Object?> get props => [
        enableBranchesBookmarksCount,
        enableBranchesLikesCount,
        enableBranchesViewsCount,
        enableTreesBookmarksCount,
        enableTreesLikesCount,
        enableTreesViewsCount,
        id,
      ];

  @override
  bool get stringify => true;
}
