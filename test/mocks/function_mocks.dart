import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/core/failures.dart';

class MockValidateEmailAddress extends Mock {
  Either<ValueFailure<String>, String> call(String value);
}
