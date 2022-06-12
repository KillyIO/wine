import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/password.domain.dart';
import 'package:wine/features/auth/username.fomain.dart';
import 'package:wine/features/core/unique_id.domain.dart';

class MockEmailAddress extends Mock implements EmailAddress {}

class MockPassword extends Mock implements Password {}

class MockUniqueID extends Mock implements UniqueID {}

class MockUser extends Mock implements User {}

class MockUsername extends Mock implements Username {}
