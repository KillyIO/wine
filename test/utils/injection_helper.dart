import 'package:injectable/injectable.dart';
import 'package:wine/injection.dart';

void setupInjection() {
  getIt.reset();
  configureInjection(Environment.test);
}
