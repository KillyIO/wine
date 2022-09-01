import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/features/default_covers/default_cover.domain.dart';
import 'package:wine/features/default_covers/default_cover_dto.infrastructure.dart';
import 'package:wine/features/default_covers/default_covers_failure.domain.dart';
import 'package:wine/features/default_covers/i_default_covers_repository.domain.dart';
import 'package:wine/features/default_covers/isar_default_cover.infrastructure.dart';
import 'package:wine/utils/constants/paths/default_covers.dart';

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
    this._isar,
  );

  final FirebaseFirestore _firestore;
  final Isar _isar;

  @override
  Future<Result<Unit, DefaultCoversFailure>> cacheDefaultCovers(
    List<DefaultCover> defaultCovers,
  ) async {
    try {
      return await _isar.writeTxn((isar) async {
        final covers = <IsarDefaultCover>[];

        for (final defaultCover in defaultCovers) {
          var defaultCoverAdapter =
              DefaultCoverDTO.fromDomain(defaultCover).toAdapter();

          final isarDefaultCover = await isar.defaultCovers
              .where()
              .keyEqualTo(defaultCover.key)
              .findFirst();

          if (isarDefaultCover != null) {
            defaultCoverAdapter =
                defaultCoverAdapter.copyWith(id: isarDefaultCover.id);
          }
          covers.add(defaultCoverAdapter);
        }

        final ids = await isar.defaultCovers.putAll(covers);

        if (ids.length == defaultCovers.length) {
          return Ok(unit);
        }
        return Err(const DefaultCoversFailure.defaultCoversNotCached());
      });
    } catch (_) {
      return Err(const DefaultCoversFailure.unexpected());
    }
  }

  @override
  Future<Result<DefaultCover, DefaultCoversFailure>> fetchDefaultCoverByKey(
    String key,
  ) async {
    try {
      final isarDefaultCover =
          await _isar.defaultCovers.where().keyEqualTo(key).findFirst();

      if (isarDefaultCover != null) {
        return Ok(isarDefaultCover.toDomain());
      }
      return Err(const DefaultCoversFailure.defaultCoverNotFetched());
    } catch (_) {
      return Err(const DefaultCoversFailure.unexpected());
    }
  }

  @override
  Future<Result<List<DefaultCover>, DefaultCoversFailure>>
      loadDefaultCovers() async {
    try {
      final snapshot = await _firestore.collection(defaultCoversPath).get();

      if (snapshot.docs.isEmpty) {
        return Err(const DefaultCoversFailure.defaultCoversNotLoaded());
      }

      final data = <DefaultCover>[];
      for (final document in snapshot.docs) {
        final map = document.data();

        data.add(
          DefaultCover(
            key: map['key'] as String,
            url: CoverURL(map['coverURL'] as String),
          ),
        );
      }
      return Ok(data);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const DefaultCoversFailure.permissionDenied());
      }
      return Err(const DefaultCoversFailure.serverError());
    } catch (_) {
      return Err(const DefaultCoversFailure.unexpected());
    }
  }
}
