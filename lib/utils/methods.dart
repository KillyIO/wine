import 'package:flutter/widgets.dart';
import 'package:time/time.dart';

class Methods {
  static Map<String, String> getGenres(BuildContext context) {
    return {
      'action': 'Action',
      'adventure': 'Adventure',
      'erotica': 'Erotica',
      'fantasy': 'Fantasy',
      'horror': 'Horror',
      'mystery': 'Mystery',
      'romance': 'Romance',
      'scifi': 'Science fiction',
    };
  }

  static List<String> getGenreKeys() {
    return <String>[
      'action',
      'adventure',
      'erotica',
      'fantasy',
      'horror',
      'mystery',
      'romance',
      'scifi',
    ];
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

  static List<String> getAccountNavbarItems(BuildContext context) {
    return <String>[
      'MY SERIES',
      'MY CHAPTERS',
    ];
  }

  static List<String> getAccountVerticalNavbarItems(BuildContext context) {
    return <String>[
      'PUBLISHED',
      'DRAFTS',
      'BOOKMARKS'
    ];
  }

  static List<String> getHomeNavbarItems(BuildContext context) {
    return [
      'TOP SERIES',
      'NEW SERIES',
    ];
  }

  static Map<String, String> getTimeFilters(BuildContext context) {
    return {
      'today': 'today',
      'week': 'this week',
      'month': 'this month',
      'year': 'this year',
      'all': 'all time',
    };
  }

  static Map<String, int> getTimeFiltersTimestamps() {
    return {
      'today': (DateTime.now() - 1.days).millisecondsSinceEpoch,
      'week': (DateTime.now() - 1.weeks).millisecondsSinceEpoch,
      'month': (DateTime.now() - 30.days).millisecondsSinceEpoch,
      'year': (DateTime.now() - 365.days).millisecondsSinceEpoch,
      'all': DateTime(2020).millisecondsSinceEpoch,
    };
  }

  static List<String> getPlaceholderUrls() {
    return <String>[
      'https://firebasestorage.googleapis.com/v0/b/wine-dev-1db0c.appspot.com/o/placeholders%2Fbook_placeholder_pastel_pink.png?alt=media&token=22d128f9-10f7-45d1-a642-9d29ae7e4bc9',
      'https://firebasestorage.googleapis.com/v0/b/wine-dev-1db0c.appspot.com/o/placeholders%2Fbook_placeholder_pastel_yellow.png?alt=media&token=3ab84d84-829f-4d39-9ed6-698694e87abd',
      'https://firebasestorage.googleapis.com/v0/b/wine-dev-1db0c.appspot.com/o/placeholders%2Fbook_placeholder_pastel_blue.png?alt=media&token=4903fb44-6ace-4766-818c-6a5364dc1da2',
      'https://firebasestorage.googleapis.com/v0/b/wine-dev-1db0c.appspot.com/o/placeholders%2Fbook_placeholder_pastel_cyan.png?alt=media&token=3fb4a760-15a9-4a1b-abf3-5833b1f851c6',
    ];
  }
}
