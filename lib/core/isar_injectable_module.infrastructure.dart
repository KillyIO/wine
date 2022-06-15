import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/features/default_covers/isar_default_cover.infrastructure.dart';
import 'package:wine/features/settings/isar_settings.infrastructure.dart';
import 'package:wine/features/user/isar_user.infrastructure.dart';
import 'package:wine/flavors.dart';

/// @nodoc
@module
abstract class IIsarInjectableModule {
  /// Initialize and return an instance of Isar.
  @preResolve
  @Environment(Environment.dev)
  @Environment(Environment.prod)
  @LazySingleton()
  Future<Isar> get isar async {
    if (F.appFlavor == Flavor.development) {
      // initializeIsarConnect();
    }

    final isar = await Isar.open(
      schemas: [IsarDefaultCoverSchema, IsarSettingsSchema, IsarUserSchema],
      directory: (await getApplicationDocumentsDirectory()).path,
      inspector: true,
    );

    return isar;
  }
}
