import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/infrastructure/core/converter.dart';

part 'series_dto.freezed.dart';
part 'series_dto.g.dart';

/// @nodoc
@freezed
abstract class SeriesDTO with _$SeriesDTO {
  /// @nodoc
  factory SeriesDTO({
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
    @JsonKey(ignore: true) String uid,
  }) = _SeriesDTO;

  /// @nodoc
  factory SeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$SeriesDTOFromJson(json);

  /// @nodoc
  factory SeriesDTO.fromFirestore(DocumentSnapshot doc) {
    return SeriesDTO.fromJson(doc.data()).copyWith(uid: doc.id);
  }
}
