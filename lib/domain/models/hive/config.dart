import 'package:hive/hive.dart';

part 'config.g.dart';

/// @nodoc
@HiveType(typeId: 1)
class Config extends HiveObject {
  /// @nodoc
  Config({
    this.firstRun,
    this.enableSeriesViewsCount,
    this.enableSeriesLikesCount,
    this.enableSeriesBookmarksCount,
    this.enableChaptersViewsCount,
    this.enableChaptersLikesCount,
    this.enableChaptersBookmarksCount,
  });

  /// @nodoc
  factory Config.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Config(
      firstRun: map['firstRun'] as bool,
      enableSeriesViewsCount: map['enableSeriesViewsCount'] as bool,
      enableSeriesLikesCount: map['enableSeriesLikesCount'] as bool,
      enableSeriesBookmarksCount: map['enableSeriesBookmarksCount'] as bool,
      enableChaptersViewsCount: map['enableChaptersViewsCount'] as bool,
      enableChaptersLikesCount: map['enableChaptersLikesCount'] as bool,
      enableChaptersBookmarksCount: map['enableChaptersBookmarksCount'] as bool,
    );
  }

  /// @nodoc
  @HiveField(0)
  bool firstRun;

  /// @nodoc
  @HiveField(1)
  bool enableSeriesViewsCount;

  /// @nodoc
  @HiveField(2)
  bool enableSeriesLikesCount;

  /// @nodoc
  @HiveField(3)
  bool enableSeriesBookmarksCount;

  /// @nodoc
  @HiveField(4)
  bool enableChaptersViewsCount;

  /// @nodoc
  @HiveField(5)
  bool enableChaptersLikesCount;

  /// @nodoc
  @HiveField(6)
  bool enableChaptersBookmarksCount;

  /// @nodoc
  Config copyWith({
    bool firstRun,
    bool enableSeriesViewsCount,
    bool enableSeriesLikesCount,
    bool enableSeriesBookmarksCount,
    bool enableChaptersViewsCount,
    bool enableChaptersLikesCount,
    bool enableChaptersBookmarksCount,
  }) {
    return Config(
      firstRun: firstRun ?? this.firstRun,
      enableSeriesViewsCount:
          enableSeriesViewsCount ?? this.enableSeriesViewsCount,
      enableSeriesLikesCount:
          enableSeriesLikesCount ?? this.enableSeriesLikesCount,
      enableSeriesBookmarksCount:
          enableSeriesBookmarksCount ?? this.enableSeriesBookmarksCount,
      enableChaptersViewsCount:
          enableChaptersViewsCount ?? this.enableChaptersViewsCount,
      enableChaptersLikesCount:
          enableChaptersLikesCount ?? this.enableChaptersLikesCount,
      enableChaptersBookmarksCount:
          enableChaptersBookmarksCount ?? this.enableChaptersBookmarksCount,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'firstRun': firstRun,
      'enableSeriesViewsCount': enableSeriesViewsCount,
      'enableSeriesLikesCount': enableSeriesLikesCount,
      'enableSeriesBookmarksCount': enableSeriesBookmarksCount,
      'enableChaptersViewsCount': enableChaptersViewsCount,
      'enableChaptersLikesCount': enableChaptersLikesCount,
      'enableChaptersBookmarksCount': enableChaptersBookmarksCount,
    };
  }

  @override
  String toString() {
    return '''
    Config(firstRun: $firstRun,
    enableSeriesViewsCount: $enableSeriesViewsCount,
    enableSeriesLikesCount: $enableSeriesLikesCount,
    enableSeriesBookmarksCount: $enableSeriesBookmarksCount,
    enableChaptersViewsCount: $enableChaptersViewsCount,
    enableChaptersLikesCount: $enableChaptersLikesCount,
    enableChaptersBookmarksCount: $enableChaptersBookmarksCount)
    ''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Config &&
        other.firstRun == firstRun &&
        other.enableSeriesViewsCount == enableSeriesViewsCount &&
        other.enableSeriesLikesCount == enableSeriesLikesCount &&
        other.enableSeriesBookmarksCount == enableSeriesBookmarksCount &&
        other.enableChaptersViewsCount == enableChaptersViewsCount &&
        other.enableChaptersLikesCount == enableChaptersLikesCount &&
        other.enableChaptersBookmarksCount == enableChaptersBookmarksCount;
  }

  @override
  int get hashCode {
    return firstRun.hashCode ^
        enableSeriesViewsCount.hashCode ^
        enableSeriesLikesCount.hashCode ^
        enableSeriesBookmarksCount.hashCode ^
        enableChaptersViewsCount.hashCode ^
        enableChaptersLikesCount.hashCode ^
        enableChaptersBookmarksCount.hashCode;
  }
}
