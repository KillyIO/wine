import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/injection.config.dart';

/// @nodoc
GetIt getIt = GetIt.instance;

/// @nodoc
@InjectableInit()
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
