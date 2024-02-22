import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class ISharedPreferencesInjectableModule {
  @preResolve
  @LazySingleton()
  Future<SharedPreferences> get sharedPreferences async =>
      SharedPreferences.getInstance();
}
