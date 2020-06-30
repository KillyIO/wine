import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:time/time.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';

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
      'PROFILE',
      'MY SERIES',
      'MY CHAPTERS',
    ];
  }

  static List<String> getAccountVerticalNavbarItems(BuildContext context) {
    return <String>['PUBLISHED', 'DRAFTS', 'BOOKMARKS'];
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

  static List<String> getPlaceholderKeys() {
    return <String>[
      'pastelBlue',
      'pastelCyan',
      'pastelPink',
      'pastelYellow',
    ];
  }

  static bool isUrl(String input) {
    return Uri.parse(input).isAbsolute;
  }

  static void pseudoRestart(BuildContext context) {
    sailor.navigate(
      Constants.homeRoute,
      navigationType: NavigationType.pushAndRemoveUntil,
      removeUntilPredicate: (_) => false,
    );
    context.bloc<CoreAuthenticationBloc>().add(const CoreAuthenticationEvent.userStatusChangedEVT());
    context.bloc<HomeNavigationBloc>().add(const HomeNavigationEvent.resetBlocEVT());
  }
}
