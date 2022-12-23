import 'package:mime/mime.dart';

/// @nodoc
extension StringX on String {
  /// @nodoc
  bool? get isImage {
    final mimeType = lookupMimeType(this);

    return mimeType?.startsWith('image/');
  }
}
