import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';

class MockEmailAddress extends Mock implements EmailAddress {}

class MockPassword extends Mock implements Password {}

class MockUniqueID extends Mock implements UniqueID {}

class MockUser extends Mock implements User {}
