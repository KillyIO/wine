import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/injection.config.dart';

/// @nodoc
final getIt = GetIt.instance;

/// @nodoc
@InjectableInit()
Future<void> configureInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}
