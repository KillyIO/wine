import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

/// @nodoc
@module
abstract class HiveInjectableModule {
  /// Initialize and return an instance of Hive.
  @preResolve
  @lazySingleton
  Future<HiveInterface> get hive async {
    await Hive.initFlutter();

    return Hive;
  }
}
