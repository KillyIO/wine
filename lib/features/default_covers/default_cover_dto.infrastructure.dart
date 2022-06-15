import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/core/cover_url.domain.dart';
import 'package:wine/features/default_covers/default_cover.domain.dart';
import 'package:wine/features/default_covers/isar_default_cover.infrastructure.dart';

part 'default_cover_dto.infrastructure.freezed.dart';
part 'default_cover_dto.infrastructure.g.dart';

/// @nodoc
@freezed
class DefaultCoverDTO with _$DefaultCoverDTO {
  /// @nodoc
  factory DefaultCoverDTO({
    required String key,
    required String url,
  }) = _DefaultCoverDTO;

  /// @nodoc
  factory DefaultCoverDTO.fromDomain(DefaultCover defaultCover) {
    return DefaultCoverDTO(
      key: defaultCover.key,
      url: defaultCover.url.getOrCrash(),
    );
  }

  /// @nodoc
  factory DefaultCoverDTO.fromAdapter(IsarDefaultCover defaultCover) {
    return DefaultCoverDTO(
      key: defaultCover.key,
      url: defaultCover.url,
    );
  }

  /// @nodoc
  factory DefaultCoverDTO.fromJson(Map<String, dynamic> json) =>
      _$DefaultCoverDTOFromJson(json);
}

/// @nodoc
extension DefaultCoverDTOX on DefaultCoverDTO {
  /// @nodoc
  DefaultCover toDomain() => DefaultCover(
        key: key,
        url: CoverURL(url),
      );

  /// @nodoc
  IsarDefaultCover toAdapter() => IsarDefaultCover(
        key: key,
        url: url,
      );

  /// @nodoc
  Map<String, dynamic> toMap() => <String, dynamic>{
        'key': key,
        'url': url,
      };
}

/// @nodoc
extension DefaultCoverMapX on Map<dynamic, dynamic> {
  /// @nodoc
  DefaultCover toDomain() => DefaultCover(
        key: this['key'] as String,
        url: CoverURL(this['url'] as String),
      );
}
