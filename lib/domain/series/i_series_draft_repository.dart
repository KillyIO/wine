import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
abstract class ISeriesDraftRepository {
  /// @nodoc
  Future<Result<SeriesFailure, Unit>> deleteSeriesDraft(UniqueID uid);
}
