import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

abstract class IUserRepository {
  Future<Result<Unit, UserFailure>> checkUsernameAvailability(
    Username username,
  );

  Future<Result<User, UserFailure>> loadUser(UniqueID userUID);

  Future<Result<Unit, UserFailure>> saveDetailsFromUser(User user);

  Future<Result<Unit, UserFailure>> saveUsername(
    UniqueID userUID,
    Username username,
  );
}
