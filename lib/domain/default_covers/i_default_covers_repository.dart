import 'package:oxidized/oxidized.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';

/// @nodoc
abstract class IDefaultCoversRepository {
  /// @nodoc
  Future<Result<Unit, DefaultCoversFailure>> cacheDefaultCoverURLs(
    Map<String, String> urls,
  );

  /// @nodoc
  Future<Result<String, DefaultCoversFailure>> fetchDefaultCoverURLByKey(
    String key,
  );

  /// @nodoc
  Future<Result<Map<String, String>, DefaultCoversFailure>>
      loadDefaultCoverURLs();
}
