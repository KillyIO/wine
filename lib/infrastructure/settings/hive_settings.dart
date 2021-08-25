import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

import 'package:wine/domain/settings/settings.dart';

part 'hive_settings.g.dart';

/// @nodoc
@HiveType(typeId: 1)
class HiveSettings extends Equatable {
  /// @nodoc
  const HiveSettings({
    this.enableChaptersBookmarksCount,
    this.enableChaptersLikesCount,
    this.enableChaptersViewsCount,
    this.enableSeriesBookmarksCount,
    this.enableSeriesLikesCount,
    this.enableSeriesViewsCount,
  });

  /// @nodoc
  factory HiveSettings.fromMap(Map<String, dynamic> map) {
    return HiveSettings(
      enableChaptersBookmarksCount: map['enableChaptersBookmarksCount'] as bool,
      enableChaptersLikesCount: map['enableChaptersLikesCount'] as bool,
      enableChaptersViewsCount: map['enableChaptersViewsCount'] as bool,
      enableSeriesBookmarksCount: map['enableSeriesBookmarksCount'] as bool,
      enableSeriesLikesCount: map['enableSeriesLikesCount'] as bool,
      enableSeriesViewsCount: map['enableSeriesViewsCount'] as bool,
    );
  }

  /// @nodoc
  @HiveField(0)
  final bool? enableChaptersBookmarksCount;

  /// @nodoc
  @HiveField(1)
  final bool? enableChaptersLikesCount;

  /// @nodoc
  @HiveField(2)
  final bool? enableChaptersViewsCount;

  /// @nodoc
  @HiveField(3)
  final bool? enableSeriesBookmarksCount;

  /// @nodoc
  @HiveField(4)
  final bool? enableSeriesLikesCount;

  /// @nodoc
  @HiveField(5)
  final bool? enableSeriesViewsCount;

  /// @nodoc
  HiveSettings copyWith({
    bool? enableChaptersBookmarksCount,
    bool? enableChaptersLikesCount,
    bool? enableChaptersViewsCount,
    bool? enableSeriesBookmarksCount,
    bool? enableSeriesLikesCount,
    bool? enableSeriesViewsCount,
  }) {
    return HiveSettings(
      enableChaptersBookmarksCount:
          enableChaptersBookmarksCount ?? this.enableChaptersBookmarksCount,
      enableChaptersLikesCount:
          enableChaptersLikesCount ?? this.enableChaptersLikesCount,
      enableChaptersViewsCount:
          enableChaptersViewsCount ?? this.enableChaptersViewsCount,
      enableSeriesBookmarksCount:
          enableSeriesBookmarksCount ?? this.enableSeriesBookmarksCount,
      enableSeriesLikesCount:
          enableSeriesLikesCount ?? this.enableSeriesLikesCount,
      enableSeriesViewsCount:
          enableSeriesViewsCount ?? this.enableSeriesViewsCount,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableChaptersBookmarksCount': enableChaptersBookmarksCount,
      'enableChaptersLikesCount': enableChaptersLikesCount,
      'enableChaptersViewsCount': enableChaptersViewsCount,
      'enableSeriesBookmarksCount': enableSeriesBookmarksCount,
      'enableSeriesLikesCount': enableSeriesLikesCount,
      'enableSeriesViewsCount': enableSeriesViewsCount,
    };
  }

  /// @nodoc
  Settings toDomain() {
    return Settings(
      enableChaptersBookmarksCount: enableChaptersBookmarksCount,
      enableChaptersLikesCount: enableChaptersLikesCount,
      enableChaptersViewsCount: enableChaptersViewsCount,
      enableSeriesBookmarksCount: enableSeriesBookmarksCount,
      enableSeriesLikesCount: enableSeriesLikesCount,
      enableSeriesViewsCount: enableSeriesViewsCount,
    );
  }

  @override
  List<Object> get props => [
        enableChaptersBookmarksCount!,
        enableChaptersLikesCount!,
        enableChaptersViewsCount!,
        enableSeriesBookmarksCount!,
        enableSeriesLikesCount!,
        enableSeriesViewsCount!,
      ];

  @override
  bool get stringify => true;
}
