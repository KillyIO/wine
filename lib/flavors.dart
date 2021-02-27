/// Build flavors.
enum Flavor {
  /// Build for beta testers.
  beta,

  /// Build for developers and internal testing.
  development,

  /// Build for final users.
  production,
}

/// [F] is class containing values dependant on the build type.
class F {
  /// @nodoc
  static Flavor appFlavor;

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
