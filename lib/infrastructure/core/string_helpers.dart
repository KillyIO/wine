import 'package:mime/mime.dart';

extension StringX on String {
  bool? get isImage {
    final mimeType = lookupMimeType(this);

    return mimeType?.startsWith('image/');
  }
}
