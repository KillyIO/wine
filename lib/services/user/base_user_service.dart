import 'package:wine/models/user.dart';
import 'package:wine/services/base_service.dart';

abstract class BaseUserService extends BaseService {
  Future<void> saveDetailsFromUser(User user);
  Future<void> checkUsernameAvailability(String username);
  Future<bool> isAccountComplete(String sessionUid);
  Future<User> getUser(String sessionUid);
  Future<void> updateUsername(String sessionUid, String username);
  Future<void> updateIsEmailVerified(String sessionUid, bool isEmailVerified);
}