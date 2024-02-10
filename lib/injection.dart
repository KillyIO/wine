import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection(String env) async {
  await getIt.init(environment: env);
}
