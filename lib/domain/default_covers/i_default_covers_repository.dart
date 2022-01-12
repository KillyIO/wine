import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/default_covers/default_cover.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';

/// @nodoc
abstract class IDefaultCoversRepository {
  /// @nodoc
  Future<Result<Unit, DefaultCoversFailure>> cacheDefaultCovers(
    List<DefaultCover> defaultCovers,
  );

  /// @nodoc
  Future<Result<DefaultCover, DefaultCoversFailure>> fetchDefaultCoverByKey(
    String key,
  );

  /// @nodoc
  Future<Result<List<DefaultCover>, DefaultCoversFailure>> loadDefaultCovers();
}
