enum Flavor {
  BETA,
  DEVELOPMENT,
  PRODUCTION,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.BETA:
        return 'WINE Beta';
      case Flavor.DEVELOPMENT:
        return 'WINE Dev';
      case Flavor.PRODUCTION:
        return 'WINE';
      default:
        return 'title';
    }
  }

}
