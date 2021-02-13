import 'dart:math';

/// @nodoc
extension ListX on List {
  /// @nodoc
  List<List<T>> chunk<T>(int size) {
    return List.generate((length / size).ceil(),
        (i) => sublist(i * size, min(i * size + size, length)));
  }
}
