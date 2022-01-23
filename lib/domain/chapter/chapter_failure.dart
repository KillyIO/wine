import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_failure.freezed.dart';

/// @nodoc#
@freezed
class ChapterFailure with _$ChapterFailure {
  /// @nodoc
  const factory ChapterFailure.chapterOneAlreadyExists() =
      ChapterOneAlreadyExists;

  /// @nodoc
  const factory ChapterFailure.coverNotUploaded() = CoverNotUploaded;

  /// @nodoc
  const factory ChapterFailure.chapterNotFound() = ChapterNotFound;

  /// @nodoc
  const factory ChapterFailure.permissionDenied() = PermissionDenied;

  /// @nodoc
  const factory ChapterFailure.serverError() = ServerError;

  /// @nodoc
  const factory ChapterFailure.unexpected() = Unexpected;
}
