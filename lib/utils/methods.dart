import 'package:flutter/widgets.dart';

class Methods {
  static Map<String, String> getGenres(BuildContext context) {
    return {
      'action': 'Action',
      'adventure': 'Adventure',
      'scifi': 'Science fiction',
    };
  }

  static Map<String, String> getLanguages(BuildContext context) {
    return {
      'en': 'English',
      'fr': 'Français',
    };
  }

  static Map<String, String> getCopyrights(BuildContext context) {
    return {
      'CC BY': 'Creative Commons (CC) Attribution',
      'CC BY-SA': '(CC) Attribution - Partage dans les Mêmes Conditions',
      'CC BY-ND': '(CC) Attribution - Pas de Modification'
    };
  }
}
