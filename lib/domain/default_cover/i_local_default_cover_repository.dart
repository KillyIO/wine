import 'package:dartz/dartz.dart';
import 'package:wine/domain/default_cover/default_cover_failure.dart';

/// @nodoc
abstract class ILocalDefaultCoverRepository {
  /// @nodoc
  Future<Either<DefaultCoverFailure, String>> fetchDefaultCoverURLByKey(
    String key,
  );

  /// @nodoc
  Future<Either<DefaultCoverFailure, Unit>> cacheDefaultCoverURLs(
    Map<String, String> urls,
  );
}
