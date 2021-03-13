import 'package:dartz/dartz.dart';
import 'package:wine/domain/default_cover/default_cover_failure.dart';

/// @nodoc
abstract class IOnlineDefaultCoverRepository {
  /// @nodoc
  Future<Either<DefaultCoverFailure, Map<String, String>>>
      loadDefaultCoverURLs();
}
