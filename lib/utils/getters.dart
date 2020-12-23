import 'package:time/time.dart';

import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/application/database/library/library_database_bloc.dart';

/// @nodoc
mixin Getters {
  /// @nodoc
  List<String> get chapterEditorItemsKeys {
    return <String>[
      'editor',
      'preview',
    ];
  }

  /// @nodoc
  List<String> get copyrightKeys {
    return <String>[
      'cc-by',
      'cc-by-sa',
      'cc-ny-nc',
      'cc-by-nc-sa',
      'cc-by-nd',
      'cc-by-nc-bd',
    ];
  }

  /// @nodoc
  List<String> get genreKeys {
    return <String>[
      'action',
      'adventure',
      'biography',
      'comedy',
      'erotica',
      'fantasy',
      'historical',
      'horror',
      'mystery',
      'romance',
      'scifi',
      'thriller',
    ];
  }

  /// @nodoc
  List<HomeDatabaseEvent> get homeFiltersAppliedOrPageViewIndexChangedEvents {
    return <HomeDatabaseEvent>[
      const HomeDatabaseEvent
          .filtersAppliedOrPageViewIndexChangedFromTopSeriesLayout(),
      const HomeDatabaseEvent
          .filtersAppliedOrPageViewIndexChangedFromNewSeriesLayout(),
    ];
  }

  /// @nodoc
  List<String> get homeNavbarItemsKeys {
    return <String>[
      'topSeries',
      'newSeries',
    ];
  }

  /// @nodoc
  List<String> get languageKeys {
    return <String>[
      'en',
      'fr',
    ];
  }

  /// @nodoc
  final List<String> libraryLayoutsContentType = <String>[
    'published',
    'drafts',
    'bookmarked'
  ];

  /// @nodoc
  List<String> get libraryNavbarItemsKeys {
    return <String>[
      'mySeries',
      'myChapters',
    ];
  }

  /// @nodoc
  List<List<LibraryDatabaseEvent>>
      get libraryPageViewOrVerticalNavbarIndexEvents {
    return [
      <LibraryDatabaseEvent>[
        const LibraryDatabaseEvent.indexChangedToSeriesPublishedEVT(),
        const LibraryDatabaseEvent.indexChangedToSeriesDraftsEVT(),
        const LibraryDatabaseEvent.indexChangedToSeriesBookmarkedEVT(),
      ],
      <LibraryDatabaseEvent>[
        const LibraryDatabaseEvent.indexChangedToChapterPublishedEVT(),
        const LibraryDatabaseEvent.indexChangedToChapterDraftsEVT(),
        const LibraryDatabaseEvent.indexChangedToChapterBookmarkedEVT(),
      ],
    ];
  }

  /// @nodoc
  List<String> get libraryVerticalNavbarItemsKeys {
    return <String>[
      'published',
      'drafts',
      'bookmarks',
    ];
  }

  /// @nodoc
  List<String> get placeholderKeys {
    return <String>[
      'pastelBlue',
      'pastelCyan',
      'pastelPink',
      'pastelYellow',
    ];
  }

  /// @nodoc
  List<String> get timeFilterKeys {
    return <String>[
      'today',
      'week',
      'month',
      'year',
      'all',
    ];
  }

  /// @nodoc
  Map<String, int> get timeFiltersTimestamps {
    return <String, int>{
      'today': (DateTime.now() - 1.days).millisecondsSinceEpoch,
      'week': (DateTime.now() - 1.weeks).millisecondsSinceEpoch,
      'month': (DateTime.now() - 30.days).millisecondsSinceEpoch,
      'year': (DateTime.now() - 365.days).millisecondsSinceEpoch,
      'all': DateTime(2020).millisecondsSinceEpoch,
    };
  }
}
