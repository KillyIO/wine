import 'package:dartz/dartz.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';

/// @nodoc
abstract class IDefaultCoversRepository {
  /// @nodoc
  Future<Either<DefaultCoversFailure, Unit>> cacheDefaultCoverURLs(
    Map<String, String> urls,
  );

  /// @nodoc
  Future<Either<DefaultCoversFailure, String>> fetchDefaultCoverURLByKey(
    String key,
  );

  /// @nodoc
  Future<Either<DefaultCoversFailure, Map<String, String>>>
      loadDefaultCoverURLs();
}
