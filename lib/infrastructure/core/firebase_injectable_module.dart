import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

/// @nodoc
@module
abstract class FirebaseInjectableModule {
  /// @nodoc
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();

  /// @nodoc
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  /// @nodoc
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  /// @nodoc
  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}
