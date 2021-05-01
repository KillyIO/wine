import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';

/// @nodoc
abstract class IDefaultCoversRepository {
  /// @nodoc
  Future<Result<DefaultCoversFailure, Unit>> cacheDefaultCoverURLs(
    Map<String, String> urls,
  );

  /// @nodoc
  Future<Result<DefaultCoversFailure, String>> fetchDefaultCoverURLByKey(
    String key,
  );

  /// @nodoc
  Future<Result<DefaultCoversFailure, Map<String, String>>>
      loadDefaultCoverURLs();
}
