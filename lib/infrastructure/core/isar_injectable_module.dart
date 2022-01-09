import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:isar_connect/isar_connect.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wine/flavors.dart';
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
    if (F.appFlavor == Flavor.development) {
      initializeIsarConnect();
    }

    final isar = await Isar.open(
      schemas: [IsarUserSchema],
      directory: (await getApplicationDocumentsDirectory()).path,
    );

    return isar;
  }
}
