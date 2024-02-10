import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/default_covers/default_cover.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/infrastructure/default_covers/default_cover_dto.dart';
import 'package:wine/utils/constants/paths/default_covers.dart';

@LazySingleton(
  as: IDefaultCoversRepository,
  env: [Environment.dev, Environment.prod],
)
class SharedPreferencesDefaultCoversRepository
    implements IDefaultCoversRepository {
  SharedPreferencesDefaultCoversRepository(
    this._firestore,
    this._sharedPreferences,
  );

  final FirebaseFirestore _firestore;
  final SharedPreferences _sharedPreferences;

  @override
  Future<Result<Unit, DefaultCoversFailure>> cacheDefaultCovers(
    List<DefaultCover> defaultCovers,
  ) async {
    try {
      final coversJson = defaultCovers
          .map(
            (defaultCover) => DefaultCoverDTO.fromDomain(defaultCover).toJson(),
          )
          .toList();

      final coversJsonString = jsonEncode(coversJson);

      await _sharedPreferences.setString('defaultCovers', coversJsonString);

      return const Ok(unit);
    } catch (_) {
      return const Err(DefaultCoversFailure.unexpected());
    }
  }

  @override
  Future<Result<DefaultCover, DefaultCoversFailure>> fetchDefaultCoverByKey(
    String key,
  ) async {
    try {
      final coversJsonString = _sharedPreferences.getString('defaultCovers');

      if (coversJsonString == null) {
        return const Err(DefaultCoversFailure.defaultCoversNotCached());
      }

      final coversJson = jsonDecode(coversJsonString) as List;

      final covers = coversJson
          .map(
            (json) => DefaultCoverDTO.fromJson(json as Map<String, dynamic>)
                .toDomain(),
          )
          .toList();

      final defaultCover = covers.firstWhereOrNull(
        (defaultCover) => defaultCover.key == key,
      );

      if (defaultCover == null) {
        return const Err(DefaultCoversFailure.defaultCoverNotFetched());
      }

      return Ok(defaultCover);
    } catch (_) {
      return const Err(DefaultCoversFailure.unexpected());
    }
  }

  @override
  Future<Result<List<DefaultCover>, DefaultCoversFailure>>
      loadDefaultCovers() async {
    try {
      final snapshot = await _firestore.collection(defaultCoversPath).get();

      if (snapshot.docs.isEmpty) {
        return const Err(DefaultCoversFailure.defaultCoversNotLoaded());
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
        return const Err(DefaultCoversFailure.permissionDenied());
      }
      return const Err(DefaultCoversFailure.serverError());
    } catch (_) {
      return const Err(DefaultCoversFailure.unexpected());
    }
  }
}
