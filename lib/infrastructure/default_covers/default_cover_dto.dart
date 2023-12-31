import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/default_covers/default_cover.dart';
import 'package:wine/infrastructure/default_covers/isar_default_cover.dart';

part 'default_cover_dto.freezed.dart';
part 'default_cover_dto.g.dart';

@freezed
class DefaultCoverDTO with _$DefaultCoverDTO {
  factory DefaultCoverDTO({
    required String key,
    required String url,
  }) = _DefaultCoverDTO;

  factory DefaultCoverDTO.fromDomain(DefaultCover defaultCover) {
    return DefaultCoverDTO(
      key: defaultCover.key,
      url: defaultCover.url.getOrCrash(),
    );
  }

  factory DefaultCoverDTO.fromAdapter(IsarDefaultCover defaultCover) {
    return DefaultCoverDTO(
      key: defaultCover.key,
      url: defaultCover.url,
    );
  }

  factory DefaultCoverDTO.fromJson(Map<String, dynamic> json) =>
      _$DefaultCoverDTOFromJson(json);
}

extension DefaultCoverDTOX on DefaultCoverDTO {
  DefaultCover toDomain() => DefaultCover(
        key: key,
        url: CoverURL(url),
      );

  IsarDefaultCover toAdapter() => IsarDefaultCover(
        key: key,
        url: url,
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        'key': key,
        'url': url,
      };
}

extension DefaultCoverMapX on Map<dynamic, dynamic> {
  DefaultCover toDomain() => DefaultCover(
        key: this['key'] as String,
        url: CoverURL(this['url'] as String),
      );
}
