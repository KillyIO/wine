/// @nodoc
List<String> get libraryLayoutsContentType => <String>[
      'published',
      'drafts',
      'bookmarked',
    ];

/// @nodoc
List<String> get libraryNavbarItemsKeys => <String>[
      'mySeries',
      'myChapters',
    ];

/// @nodoc
// List<List<LibraryDatabaseEvent>>
//     get libraryPageViewOrVerticalNavbarIndexEvents {
//   return [
//     <LibraryDatabaseEvent>[
//       const LibraryDatabaseEvent.indexChangedToSeriesPublishedEVT(),
//       const LibraryDatabaseEvent.indexChangedToSeriesDraftsEVT(),
//       const LibraryDatabaseEvent.indexChangedToSeriesBookmarkedEVT(),
//     ],
//     <LibraryDatabaseEvent>[
//       const LibraryDatabaseEvent.indexChangedToChapterPublishedEVT(),
//       const LibraryDatabaseEvent.indexChangedToChapterDraftsEVT(),
//       const LibraryDatabaseEvent.indexChangedToChapterBookmarkedEVT(),
//     ],
//   ];
// }

/// @nodoc
List<String> get libraryVerticalNavbarItemsKeys => <String>[
      'published',
      'drafts',
      'bookmarks',
    ];
