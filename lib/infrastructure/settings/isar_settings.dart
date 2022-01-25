import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:wine/domain/settings/settings.dart';

part 'isar_settings.g.dart';

/// @nodoc
@Collection(accessor: 'settings')
class IsarSettings extends Equatable {
  /// @nodoc
  const IsarSettings({
    this.enableChaptersBookmarksCount,
    this.enableChaptersLikesCount,
    this.enableChaptersViewsCount,
    this.enableTreesBookmarksCount,
    this.enableTreesLikesCount,
    this.enableTreesViewsCount,
    this.id,
    required this.uid,
  });

  /// @nodoc
  factory IsarSettings.fromMap(Map<String, dynamic> map) {
    return IsarSettings(
      enableChaptersBookmarksCount: map['enableChaptersBookmarksCount'] as bool,
      enableChaptersLikesCount: map['enableChaptersLikesCount'] as bool,
      enableChaptersViewsCount: map['enableChaptersViewsCount'] as bool,
      enableTreesBookmarksCount: map['enableTreesBookmarksCount'] as bool,
      enableTreesLikesCount: map['enableTreesLikesCount'] as bool,
      enableTreesViewsCount: map['enableTreesViewsCount'] as bool,
      id: map['id'] as int,
      uid: map['uid'] as String,
    );
  }

  /// @nodoc
  final bool? enableChaptersBookmarksCount;

  /// @nodoc
  final bool? enableChaptersLikesCount;

  /// @nodoc
  final bool? enableChaptersViewsCount;

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
    bool? enableChaptersBookmarksCount,
    bool? enableChaptersLikesCount,
    bool? enableChaptersViewsCount,
    bool? enableTreesBookmarksCount,
    bool? enableTreesLikesCount,
    bool? enableTreesViewsCount,
    int? id,
    String? uid,
  }) {
    return IsarSettings(
      enableChaptersBookmarksCount:
          enableChaptersBookmarksCount ?? this.enableChaptersBookmarksCount,
      enableChaptersLikesCount:
          enableChaptersLikesCount ?? this.enableChaptersLikesCount,
      enableChaptersViewsCount:
          enableChaptersViewsCount ?? this.enableChaptersViewsCount,
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
      'enableChaptersBookmarksCount': enableChaptersBookmarksCount,
      'enableChaptersLikesCount': enableChaptersLikesCount,
      'enableChaptersViewsCount': enableChaptersViewsCount,
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
      enableChaptersBookmarksCount: enableChaptersBookmarksCount,
      enableChaptersLikesCount: enableChaptersLikesCount,
      enableChaptersViewsCount: enableChaptersViewsCount,
      enableTreesBookmarksCount: enableTreesBookmarksCount,
      enableTreesLikesCount: enableTreesLikesCount,
      enableTreesViewsCount: enableTreesViewsCount,
    );
  }

  @override
  List<Object?> get props => [
        enableChaptersBookmarksCount,
        enableChaptersLikesCount,
        enableChaptersViewsCount,
        enableTreesBookmarksCount,
        enableTreesLikesCount,
        enableTreesViewsCount,
        id,
        uid,
      ];

  @override
  bool get stringify => true;
}
