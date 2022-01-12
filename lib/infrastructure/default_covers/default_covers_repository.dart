import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/default_covers/default_cover.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/infrastructure/default_covers/default_cover_dto.dart';
import 'package:wine/infrastructure/default_covers/isar_default_cover.dart';
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
          final isarDefaultCover = await isar.isarDefaultCovers
              .where()
              .keyEqualTo(defaultCover.key)
              .findFirst();

          if (isarDefaultCover != null) {
            final defaultCoverAdapter = DefaultCoverDTO.fromDomain(defaultCover)
                .toAdapter()
                .copyWith(id: isarDefaultCover.id);

            covers.add(defaultCoverAdapter);
          }
        }

        final ids = await isar.isarDefaultCovers.putAll(covers);

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
          await _isar.isarDefaultCovers.where().keyEqualTo(key).findFirst();

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
      final querySnapshot =
          await _firestore.collection(defaultCoversPath).get();

      if (querySnapshot.docs.isEmpty) {
        return Err(const DefaultCoversFailure.defaultCoversNotLoaded());
      }

      final data = <DefaultCover>[];
      for (final document in querySnapshot.docs) {
        final map = document.data();

        data.add(
          DefaultCover(
            key: map['key'] as String,
            url: CoverURL(map['coverURL'] as String),
          ),
        );
      }
      return Ok(data);
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const DefaultCoversFailure.permissionDenied());
        }
      }
      return Err(const DefaultCoversFailure.serverError());
    } catch (_) {
      return Err(const DefaultCoversFailure.unexpected());
    }
  }
}
