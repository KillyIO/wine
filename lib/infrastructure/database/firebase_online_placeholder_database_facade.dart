import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/facades/online/i_online_placeholder_database_facade.dart';
import 'package:wine/domain/database/failures/placeholder_database_failure.dart';
import 'package:wine/domain/database/successes/placeholder_database_success.dart';
import 'package:wine/utils/paths.dart';

/// @nodoc
@LazySingleton(as: IOnlinePlaceholderDatabaseFacade)
class FirebaseOnlinePlaceholderDatabaseFacade
    implements IOnlinePlaceholderDatabaseFacade {
  /// @nodoc
  FirebaseOnlinePlaceholderDatabaseFacade(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      loadPlaceholders() async {
    final querySnapshot =
        await _firestore.collection(Paths.placeholdersPath).get();

    final data = <String, String>{};
    for (final document in querySnapshot.docs) {
      final map = document.data();

      data[map['key'] as String] = map['coverURL'] as String;
    }
    return right(PlaceholderDatabaseSuccess.placeholdersLoadedSCS(data));
  }
}
