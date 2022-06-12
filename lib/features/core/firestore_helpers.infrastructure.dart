import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
import 'package:wine/utils/paths/users.dart';

/// @nodoc
extension FirebaseFirestoreX on FirebaseFirestore {
  /// @nodoc
  CollectionReference get usersCollectionReference =>
      FirebaseFirestore.instance.collection(usersPath).withConverter<User>(
            fromFirestore: (snapshot, _) =>
                UserDTO.fromJson(snapshot.data()!).toDomain(),
            toFirestore: (value, _) => UserDTO.fromDomain(value).toJson(),
          );
}
