import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/utils/constants/boxes.dart';
import 'package:wine/utils/paths/default_covers.dart';

/// @nodoc
@LazySingleton(as: IDefaultCoversRepository, env: ['dev', 'prod'])
class DefaultCoversRepository implements IDefaultCoversRepository {
  /// @nodoc
  DefaultCoversRepository(
    this._firestore,
    this._hive,
  );

  final FirebaseFirestore _firestore;
  final HiveInterface _hive;

  @override
  Future<Either<DefaultCoversFailure, Unit>> cacheDefaultCoverURLs(
    Map<String, String> urls,
  ) async {
    for (final key in urls.keys) {
      final box = await _hive.openBox<String>(defaultCoversBox);

      await box.put(key, urls[key]);

      final url = box.get(key);
      if (url == null) {
        return left(const DefaultCoversFailure.defaultCoverURLsNotCached());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DefaultCoversFailure, String>> fetchDefaultCoverURLByKey(
    String key,
  ) async {
    final box = await _hive.openBox<String>(defaultCoversBox);

    final url = box.get(key);

    if (url != null) {
      return right(url);
    }
    return left(const DefaultCoversFailure.defaultCoverURLsNotFetched());
  }

  @override
  Future<Either<DefaultCoversFailure, Map<String, String>>>
      loadDefaultCoverURLs() async {
    try {
      final querySnapshot =
          await _firestore.collection(defaultCoversPath).get();

      if (querySnapshot.docs.isEmpty) {
        return left(const DefaultCoversFailure.defaultCoverURLsNotLoaded());
      }

      final data = <String, String>{};
      for (final document in querySnapshot.docs) {
        final map = document.data();

        data[map['key'] as String] = map['coverURL'] as String;
      }
      return right(data);
    } on FirebaseException catch (_) {
      return left(const DefaultCoversFailure.serverError());
    } catch (_) {
      return left(const DefaultCoversFailure.unexpected());
    }
  }
}
