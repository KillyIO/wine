import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/utils/constants/boxes.dart';
import 'package:wine/utils/paths/default_covers.dart';

/// @nodoc
@LazySingleton(
  as: IDefaultCoversRepository,
  env: [
    Environment.dev,
    Environment.prod,
  ],
)
class DefaultCoversRepository implements IDefaultCoversRepository {
  /// @nodoc
  DefaultCoversRepository(
    this._firestore,
    this._hive,
  );

  final FirebaseFirestore _firestore;
  final HiveInterface _hive;

  @override
  Future<Result<Unit, DefaultCoversFailure>> cacheDefaultCoverURLs(
    Map<String, String> urls,
  ) async {
    final box = await _hive.openBox<String>(defaultCoversBox);

    for (final key in urls.keys) {
      await box.put(key, urls[key]!);

      final url = box.get(key);
      if (url == null) {
        return Err(const DefaultCoversFailure.defaultCoverURLsNotCached());
      }
    }
    return Ok(unit);
  }

  @override
  Future<Result<String, DefaultCoversFailure>> fetchDefaultCoverURLByKey(
    String key,
  ) async {
    final box = await _hive.openBox<String>(defaultCoversBox);

    final url = box.get(key);

    if (url != null) {
      return Ok(url);
    }
    return Err(const DefaultCoversFailure.defaultCoverURLsNotFetched());
  }

  @override
  Future<Result<Map<String, String>, DefaultCoversFailure>>
      loadDefaultCoverURLs() async {
    try {
      final querySnapshot =
          await _firestore.collection(defaultCoversPath).get();

      if (querySnapshot.docs.isEmpty) {
        return Err(const DefaultCoversFailure.defaultCoverURLsNotLoaded());
      }

      final data = <String, String>{};
      for (final document in querySnapshot.docs) {
        final map = document.data();

        data[map['key'] as String] = map['coverURL'] as String;
      }
      return Ok(data);
    } on FirebaseException catch (_) {
      return Err(const DefaultCoversFailure.serverError());
    } catch (_) {
      return Err(const DefaultCoversFailure.unexpected());
    }
  }
}
