extension StringX on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get isEmptyToNull {
    return isEmpty ? null : this;
  }

  bool get isEmptyOrNull {
    return this == null || isEmpty;
  }

  bool get isNotEmptyOrNull {
    return this != null && isNotEmpty;
  }
}
