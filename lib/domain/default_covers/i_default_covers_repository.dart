import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/default_covers/default_cover.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';

abstract class IDefaultCoversRepository {
  Future<Result<Unit, DefaultCoversFailure>> cacheDefaultCovers(
    List<DefaultCover> defaultCovers,
  );

  Future<Result<DefaultCover, DefaultCoversFailure>> fetchDefaultCoverByKey(
    String key,
  );

  Future<Result<List<DefaultCover>, DefaultCoversFailure>> loadDefaultCovers();
}
