import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/features/default_covers/default_cover.domain.dart';

part 'isar_default_cover.infrastructure.g.dart';

/// @nodoc
@Collection(accessor: 'defaultCovers')
class IsarDefaultCover extends Equatable {
  /// @nodoc
  const IsarDefaultCover({
    this.id,
    required this.key,
    required this.url,
  });

  /// @nodoc
  factory IsarDefaultCover.fromMap(Map<String, dynamic> map) {
    return IsarDefaultCover(
      id: map['id'] as int,
      key: map['key'] as String,
      url: map['url'] as String,
    );
  }

  /// @nodoc
  @Id()
  final int? id;

  /// @nodoc
  @Index()
  final String key;

  /// @nodoc
  final String url;

  /// @nodoc
  IsarDefaultCover copyWith({
    int? id,
    String? key,
    String? url,
  }) {
    return IsarDefaultCover(
      id: id ?? this.id,
      key: key ?? this.key,
      url: url ?? this.url,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'key': key,
      'url': url,
    };
  }

  /// @nodoc
  DefaultCover toDomain() {
    return DefaultCover(
      key: key,
      url: CoverURL(url),
    );
  }

  @override
  List<Object?> get props => [id, key, url];

  @override
  bool get stringify => true;
}
