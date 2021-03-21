import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/utils/constants/boxes.dart';
import 'package:wine/utils/paths/default_covers.dart';

/// @nodoc
@LazySingleton(as: IDefaultCoversRepository)
class DefaultCoversRepository implements IDefaultCoversRepository {
  /// @nodoc
  DefaultCoversRepository(
    @Named(defaultCoversBox) this._defaultCoversBox,
    this._firestore,
  );

  final Box<String> _defaultCoversBox;
  final FirebaseFirestore _firestore;

  @override
  Future<Either<DefaultCoversFailure, Unit>> cacheDefaultCoverURLs(
    Map<String, String> urls,
  ) async {
    for (final key in urls.keys) {
      await _defaultCoversBox.put(key, urls[key]);

      final url = _defaultCoversBox.get(key);
      if (url == null) {
        return left(const DefaultCoversFailure.defaultCoverURLsNotCached());
      }
    }
    return right(unit);
  }

  @override
  Either<DefaultCoversFailure, String> fetchDefaultCoverURLByKey(String key) {
    final url = _defaultCoversBox.get(key);

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
