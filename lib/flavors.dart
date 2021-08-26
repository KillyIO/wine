/// @nodoc
enum Flavor {
  /// @nodoc
  beta,

  /// @nodoc
  development,

  /// @nodoc
  production,
}

/// @nodoc
class F {
  /// @nodoc
  static Flavor? appFlavor;

  /// @nodoc
  static String get title {
    switch (appFlavor) {
      case Flavor.beta:
        return 'WINE Beta';
      case Flavor.development:
        return 'WINE Dev';
      case Flavor.production:
        return 'WINE';
      default:
        return 'title';
    }
  }
}
