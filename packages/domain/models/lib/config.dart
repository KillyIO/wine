import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'config.g.dart';

/// @nodoc
@HiveType(typeId: 1)
class Config extends Equatable {
  /// @nodoc
  Config({
    this.enableChaptersBookmarksCount,
    this.enableChaptersLikesCount,
    this.enableChaptersViewsCount,
    this.enableSeriesBookmarksCount,
    this.enableSeriesLikesCount,
    this.enableSeriesViewsCount,
    this.firstRun,
  });

  /// @nodoc
  factory Config.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Config(
      enableChaptersBookmarksCount: map['enableChaptersBookmarksCount'] as bool,
      enableChaptersLikesCount: map['enableChaptersLikesCount'] as bool,
      enableChaptersViewsCount: map['enableChaptersViewsCount'] as bool,
      enableSeriesBookmarksCount: map['enableSeriesBookmarksCount'] as bool,
      enableSeriesLikesCount: map['enableSeriesLikesCount'] as bool,
      enableSeriesViewsCount: map['enableSeriesViewsCount'] as bool,
      firstRun: map['firstRun'] as bool,
    );
  }

  /// @nodoc
  @HiveField(0)
  final bool enableChaptersBookmarksCount;

  /// @nodoc
  @HiveField(1)
  final bool enableChaptersLikesCount;

  /// @nodoc
  @HiveField(2)
  final bool enableChaptersViewsCount;

  /// @nodoc
  @HiveField(3)
  final bool enableSeriesBookmarksCount;

  /// @nodoc
  @HiveField(4)
  final bool enableSeriesLikesCount;

  /// @nodoc
  @HiveField(5)
  final bool enableSeriesViewsCount;

  /// @nodoc
  @HiveField(6)
  final bool firstRun;

  /// @nodoc
  Config copyWith({
    bool enableChaptersBookmarksCount,
    bool enableChaptersLikesCount,
    bool enableChaptersViewsCount,
    bool enableSeriesBookmarksCount,
    bool enableSeriesLikesCount,
    bool enableSeriesViewsCount,
    bool firstRun,
  }) {
    return Config(
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
      firstRun: firstRun ?? this.firstRun,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return {
      'enableChaptersBookmarksCount': enableChaptersBookmarksCount,
      'enableChaptersLikesCount': enableChaptersLikesCount,
      'enableChaptersViewsCount': enableChaptersViewsCount,
      'enableSeriesBookmarksCount': enableSeriesBookmarksCount,
      'enableSeriesLikesCount': enableSeriesLikesCount,
      'enableSeriesViewsCount': enableSeriesViewsCount,
      'firstRun': firstRun,
    };
  }

  @override
  List<Object> get props => [
        enableChaptersBookmarksCount,
        enableChaptersLikesCount,
        enableChaptersViewsCount,
        enableSeriesBookmarksCount,
        enableSeriesLikesCount,
        enableSeriesViewsCount,
        firstRun,
      ];

  @override
  bool get stringify => true;
}
