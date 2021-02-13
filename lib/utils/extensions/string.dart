/// @nodoc
extension StringX on String {
  /// @nodoc
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  // /// @nodoc
  // String get isEmptyToNull {
  //   return isEmpty ? null : this;
  // }

  // /// @nodoc
  // bool get isEmptyOrNull {
  //   return this == null || isEmpty;
  // }

  // /// @nodoc
  // bool get isNotEmptyOrNull {
  //   return this != null && isNotEmpty;
  // }
}
