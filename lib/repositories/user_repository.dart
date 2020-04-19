import 'package:wine/models/user.dart';
import 'package:wine/services/user/base_user_service.dart';
import 'package:wine/services/user/firebase_user_service.dart';

class UserRepository {
  final BaseUserService _userService = FirebaseUserService();

  static final UserRepository _singleton = UserRepository._internal();

  UserRepository._internal();

  factory UserRepository() => _singleton;

  Future<void> saveDetailsFromUser(User user) =>
      _userService.saveDetailsFromUser(user);

  Future<void> checkUsernameAvailability(String username) =>
      _userService.checkUsernameAvailability(username);

  Future<bool> isAccountComplete(String sessionUid) =>
      _userService.isAccountComplete(sessionUid);

  Future<User> getUser(String sessionUid) => _userService.getUser(sessionUid);

  Future<void> updateUsername(String sessionUid, String username) =>
      _userService.updateUsername(sessionUid, username);

  Future<void> updateIsEmailVerified(String sessionUid, bool isEmailVerified) =>
      _userService.updateIsEmailVerified(sessionUid, isEmailVerified);
}
