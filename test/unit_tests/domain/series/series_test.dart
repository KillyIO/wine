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
        authorUID: UniqueID.fromUniqueString(testUid),
        coverURL: CoverURL(testCoverURL),
        genre: Genre(testGenre),
        genreOptional: Genre(testGenreOptional),
        isNSFW: false,
        language: Language(testLanguage),
        subtitle: Subtitle(testSubtitle),
        summary: Summary(testSummary),
        title: Title(testTitle),
        uid: UniqueID.fromUniqueString(testUid),
      );

      expect(series.authorUID.getOrCrash(), testUid);
      expect(series.coverURL.getOrCrash(), testCoverURL);
      expect(series.genre.getOrCrash(), testGenre);
      expect(series.genreOptional?.getOrCrash(), testGenreOptional);
      expect(series.isNSFW, false);
      expect(series.language.getOrCrash(), testLanguage);
      expect(series.subtitle?.getOrCrash(), testSubtitle);
      expect(series.summary.getOrCrash(), testSummary);
      expect(series.title.getOrCrash(), testTitle);
      expect(series.uid.getOrCrash(), testUid);
    });
  });
}
