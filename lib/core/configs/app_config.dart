enum EFlavor {
  DEVELOPMENT,
  STAGING,
  PRODUCTION;

  bool get isDev => this == DEVELOPMENT;
  bool get isProd => this == PRODUCTION;
}

class AppConfig {
  static EFlavor flavor = EFlavor.values.firstWhere((e) => e.name == const String.fromEnvironment('FLAVOR'));
  static String baseUrl = const String.fromEnvironment('BASE_URL');

  @override
  String toString() {
    return '''

      flavor: $flavor
      baseUrl: $baseUrl
    ''';
  }
}
