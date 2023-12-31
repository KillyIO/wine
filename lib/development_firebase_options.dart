// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for fuchsia - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAef03I5kj29n7SnpBAqqV8ETjZCrBoKzY',
    appId: '1:790483613493:web:dbde3ac962d2bd11903e7c',
    messagingSenderId: '790483613493',
    projectId: 'wine-dev-1db0c',
    authDomain: 'wine-dev-1db0c.firebaseapp.com',
    databaseURL: 'https://wine-dev-1db0c.firebaseio.com',
    storageBucket: 'wine-dev-1db0c.appspot.com',
    measurementId: 'G-ZM00TECE3G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCViG5NEKva2crMOySeozV3d8bVT2LzEm0',
    appId: '1:790483613493:android:8a17b6dc577e241c903e7c',
    messagingSenderId: '790483613493',
    projectId: 'wine-dev-1db0c',
    databaseURL: 'https://wine-dev-1db0c.firebaseio.com',
    storageBucket: 'wine-dev-1db0c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyALE5k2jwOInQbxWp7kNIeGBYdFHPcgjfE',
    appId: '1:790483613493:ios:b925965d4f2d96b7903e7c',
    messagingSenderId: '790483613493',
    projectId: 'wine-dev-1db0c',
    databaseURL: 'https://wine-dev-1db0c.firebaseio.com',
    storageBucket: 'wine-dev-1db0c.appspot.com',
    androidClientId:
        '790483613493-0klledarssbhgmckvmk06fvoqhd7in44.apps.googleusercontent.com',
    iosClientId:
        '790483613493-dq3doondtoh2lfrtkkp5ku976k2fca8k.apps.googleusercontent.com',
    iosBundleId: 'io.killy.wine.dev',
  );
}
