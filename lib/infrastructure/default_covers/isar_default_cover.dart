import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/default_covers/default_cover.dart';

part 'isar_default_cover.g.dart';

/// @nodoc
@Collection(accessor: 'defaultCovers', inheritance: false)
class IsarDefaultCover extends Equatable {
  /// @nodoc
  const IsarDefaultCover({
    required this.key,
    required this.url,
    this.id = Isar.autoIncrement,
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
  final Id? id;

  /// @nodoc
  @Index(unique: true)
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
  @ignore
  List<Object?> get props => [id, key, url];

  @override
  bool get stringify => true;
}
