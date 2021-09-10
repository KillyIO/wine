import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/subtitle.dart';
import 'package:wine/domain/series/summary.dart';

import '../../utils/constants.dart';

void main() {
  group('Series -', () {
    test('When args valid Then return Series', () {
      final series = Series(
        authorUID: UniqueID.fromUniqueString(testUserUid),
        bookmarksCount: 10,
        coverURL: CoverURL(testCoverURL),
        genre: testListGenre.map((g) => Genre(g)).toList(),
        isNSFW: false,
        isPublished: false,
        language: Language(testLanguage),
        likesCount: 10,
        subtitle: Subtitle(testSubtitle),
        summary: Summary(testSummary),
        title: Title(testTitle),
        uid: UniqueID.fromUniqueString(testSeriesUid),
        viewsCount: 10,
      );

      expect(series.authorUID.getOrCrash(), testUserUid);
      expect(series.bookmarksCount, 10);
      expect(series.coverURL.getOrCrash(), testCoverURL);
      expect(series.genre.map((g) => g.getOrCrash()).toList(), testListGenre);
      expect(series.isNSFW, false);
      expect(series.isPublished, false);
      expect(series.language.getOrCrash(), testLanguage);
      expect(series.likesCount, 10);
      expect(series.subtitle?.getOrCrash(), testSubtitle);
      expect(series.summary.getOrCrash(), testSummary);
      expect(series.title.getOrCrash(), testTitle);
      expect(series.uid.getOrCrash(), testSeriesUid);
      expect(series.viewsCount, 10);
    });
  });
}
