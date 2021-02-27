enum Flavor {
  beta,
  development,
  production,
}

class F {
  static Flavor appFlavor;

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
