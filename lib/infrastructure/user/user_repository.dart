import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';

/// @nodoc
@LazySingleton(as: IUserRepository)
class UserRepository extends IUserRepository {
  /// @nodoc
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserFailure, Unit>> checkUsernameAvailability(
    Username username,
  ) {
    // TODO: implement checkUsernameAvailability
    throw UnimplementedError();
  }
}
