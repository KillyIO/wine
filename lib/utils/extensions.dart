import 'dart:math';

/// @nodoc
extension StringX on String {
  /// @nodoc
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  /// @nodoc
  String get isEmptyToNull {
    return isEmpty ? null : this;
  }

  /// @nodoc
  bool get isEmptyOrNull {
    return this == null || isEmpty;
  }

  /// @nodoc
  bool get isNotEmptyOrNull {
    return this != null && isNotEmpty;
  }

  /// @nodoc
  bool get isURL {
    return Uri.parse(this).isAbsolute;
  }
}

/// @nodoc
extension ListX on List {
  /// @nodoc
  List<List<T>> chunk<T>(int size) {
    return List.generate((length / size).ceil(),
        (i) => sublist(i * size, min(i * size + size, length)));
  }
}
