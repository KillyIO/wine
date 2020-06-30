import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_placeholder_database_facade.dart';
import 'package:wine/utils/paths.dart';

@LazySingleton(as: IOnlinePlaceholderDatabaseFacade)
class FirebaseOnlinePlaceholderDatabaseFacade
    implements IOnlinePlaceholderDatabaseFacade {
  final Firestore _firestore;

  FirebaseOnlinePlaceholderDatabaseFacade(this._firestore);

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> getPlaceholderUrls() async {
    final QuerySnapshot querySnapshot =
        await _firestore.collection(Paths.placeholdersPath).getDocuments();

    final Map<String, String> data = <String, String>{};
    for (final document in querySnapshot.documents) {
      final Map<String, dynamic> map = document.data;

      data[map['key'] as String] = map['coverUrl'] as String;
    }
    return right(DatabaseSuccess.placeholdersLoadedSCS(data));
  }
}
