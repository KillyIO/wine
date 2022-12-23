import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/flavors.dart';
import 'package:wine/infrastructure/default_covers/isar_default_cover.dart';
import 'package:wine/infrastructure/settings/isar_settings.dart';
import 'package:wine/infrastructure/user/isar_user.dart';

/// @nodoc
@module
abstract class IIsarInjectableModule {
  /// Initialize and return an instance of Isar.
  @preResolve
  @Environment(Environment.dev)
  @Environment(Environment.prod)
  @LazySingleton()
  Future<Isar> get isar async {
    final isar = await Isar.open(
      [IsarDefaultCoverSchema, IsarSettingsSchema, IsarUserSchema],
      directory: (await getApplicationSupportDirectory()).path,
      inspector: F.appFlavor == Flavor.development,
    );

    return isar;
  }
}
