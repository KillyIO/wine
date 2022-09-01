import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/features/tree/subtitle.domain.dart';
import 'package:wine/features/tree/synopsis.domain.dart';
import 'package:wine/features/tree/tree.domain.dart';

import '../../utils/constants.dart';

void main() {
  group('Tree -', () {
    test('When args valid Then return Tree', () {
      final tree = Tree(
        authorUID: UniqueID.fromUniqueString(testUserUid),
        bookmarksCount: 10,
        coverURL: CoverURL(testCoverURL),
        genres: testGenres.map(Genre.new).toList(),
        isNSFW: false,
        isPublished: false,
        language: Language(testLanguage),
        likesCount: 10,
        subtitle: Subtitle(testSubtitle),
        synopsis: Synopsis(testSynopsis),
        title: Title(testTitle),
        uid: UniqueID.fromUniqueString(testTreeUid),
        viewsCount: 10,
      );

      expect(tree.authorUID.getOrCrash(), testUserUid);
      expect(tree.bookmarksCount, 10);
      expect(tree.coverURL.getOrCrash(), testCoverURL);
      expect(tree.genres.map((g) => g.getOrCrash()).toList(), testGenres);
      expect(tree.isNSFW, false);
      expect(tree.isPublished, false);
      expect(tree.language.getOrCrash(), testLanguage);
      expect(tree.likesCount, 10);
      expect(tree.subtitle?.getOrCrash(), testSubtitle);
      expect(tree.synopsis.getOrCrash(), testSynopsis);
      expect(tree.title.getOrCrash(), testTitle);
      expect(tree.uid.getOrCrash(), testTreeUid);
      expect(tree.viewsCount, 10);
    });
  });
}
