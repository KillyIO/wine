import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/features/auth/username.fomain.dart';

/// @nodoc
abstract class IUserRepository {
  /// @nodoc
  Future<Result<Unit, UserFailure>> checkUsernameAvailability(
    Username username,
  );

  /// @nodoc
  Future<Result<User, UserFailure>> loadUser(UniqueID userUID);

  /// @nodoc
  Future<Result<Unit, UserFailure>> saveDetailsFromUser(User user);

  /// @nodoc
  Future<Result<Unit, UserFailure>> saveUsername(
    UniqueID userUID,
    Username username,
  );
}
