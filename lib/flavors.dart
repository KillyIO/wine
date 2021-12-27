/// @nodoc
enum Flavor {
  /// @nodoc
  development,

  /// @nodoc
  production,
}

/// @nodoc
extension FlavorName on Flavor {
  /// @nodoc
  String get name => toString().split('.').last;
}

/// @nodoc
class F {
  /// @nodoc
  static Flavor? appFlavor;

  /// @nodoc
  static String get name => appFlavor?.name ?? '';

  /// @nodoc
  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return 'WINE Dev';
      case Flavor.production:
      case null:
        return 'WINE';
    }
  }
}
