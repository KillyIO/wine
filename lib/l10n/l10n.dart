import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);

  String getTranslation(String key) {
    final l10n = this.l10n;

    switch (key) {
      case 'en':
        return l10n.en;
      case 'fr':
        return l10n.fr;
      case 'topTrees':
        return l10n.topTrees;
      case 'newTrees':
        return l10n.newTrees;
      case 'myTrees':
        return l10n.myTrees;
      case 'myBranches':
        return l10n.myBranches;
      case 'today':
        return l10n.today;
      case 'week':
        return l10n.week;
      case 'month':
        return l10n.month;
      case 'year':
        return l10n.year;
      case 'all':
        return l10n.all;
      case 'action':
        return l10n.action;
      case 'adventure':
        return l10n.adventure;
      case 'biography':
        return l10n.biography;
      case 'comedy':
        return l10n.comedy;
      case 'erotica':
        return l10n.erotica;
      case 'fantasy':
        return l10n.fantasy;
      case 'historical':
        return l10n.historical;
      case 'horror':
        return l10n.horror;
      case 'mystery':
        return l10n.mystery;
      case 'romance':
        return l10n.romance;
      case 'scifi':
        return l10n.scifi;
      case 'thriller':
        return l10n.thriller;
      case 'published':
        return l10n.published;
      case 'drafts':
        return l10n.drafts;
      case 'bookmarked':
        return l10n.bookmarked;
      default:
        return l10n.unknown;
    }
  }
}
