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
    this.enableSeriesBookmarksCount,
    this.enableSeriesLikesCount,
    this.enableSeriesViewsCount,
    this.id,
    required this.uid,
  });

  /// @nodoc
  factory IsarSettings.fromMap(Map<String, dynamic> map) {
    return IsarSettings(
      enableChaptersBookmarksCount: map['enableChaptersBookmarksCount'] as bool,
      enableChaptersLikesCount: map['enableChaptersLikesCount'] as bool,
      enableChaptersViewsCount: map['enableChaptersViewsCount'] as bool,
      enableSeriesBookmarksCount: map['enableSeriesBookmarksCount'] as bool,
      enableSeriesLikesCount: map['enableSeriesLikesCount'] as bool,
      enableSeriesViewsCount: map['enableSeriesViewsCount'] as bool,
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
  final bool? enableSeriesBookmarksCount;

  /// @nodoc
  final bool? enableSeriesLikesCount;

  /// @nodoc
  final bool? enableSeriesViewsCount;

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
    bool? enableSeriesBookmarksCount,
    bool? enableSeriesLikesCount,
    bool? enableSeriesViewsCount,
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
      enableSeriesBookmarksCount:
          enableSeriesBookmarksCount ?? this.enableSeriesBookmarksCount,
      enableSeriesLikesCount:
          enableSeriesLikesCount ?? this.enableSeriesLikesCount,
      enableSeriesViewsCount:
          enableSeriesViewsCount ?? this.enableSeriesViewsCount,
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
      'enableSeriesBookmarksCount': enableSeriesBookmarksCount,
      'enableSeriesLikesCount': enableSeriesLikesCount,
      'enableSeriesViewsCount': enableSeriesViewsCount,
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
      enableSeriesBookmarksCount: enableSeriesBookmarksCount,
      enableSeriesLikesCount: enableSeriesLikesCount,
      enableSeriesViewsCount: enableSeriesViewsCount,
    );
  }

  @override
  List<Object?> get props => [
        enableChaptersBookmarksCount,
        enableChaptersLikesCount,
        enableChaptersViewsCount,
        enableSeriesBookmarksCount,
        enableSeriesLikesCount,
        enableSeriesViewsCount,
        id,
        uid,
      ];

  @override
  bool get stringify => true;
}
