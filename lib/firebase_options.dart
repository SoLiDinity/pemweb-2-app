// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDCukaxBorYJ7EQp6FP7LN5VekhrDrauDg',
    appId: '1:87257533918:web:170fc3de371049a47b614f',
    messagingSenderId: '87257533918',
    projectId: 'solidinity-app-account',
    authDomain: 'solidinity-app-account.firebaseapp.com',
    storageBucket: 'solidinity-app-account.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDKiAzc6tc_zxL5RP6rDe-3qhU9sNJA3A',
    appId: '1:87257533918:android:7a68756a8fee99fc7b614f',
    messagingSenderId: '87257533918',
    projectId: 'solidinity-app-account',
    storageBucket: 'solidinity-app-account.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBAiCrdl2DY6oLRP-xcdgzizSQhRJ8wXiw',
    appId: '1:87257533918:ios:46e7c58f3cf12ca17b614f',
    messagingSenderId: '87257533918',
    projectId: 'solidinity-app-account',
    storageBucket: 'solidinity-app-account.firebasestorage.app',
    iosBundleId: 'com.example.app1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBAiCrdl2DY6oLRP-xcdgzizSQhRJ8wXiw',
    appId: '1:87257533918:ios:46e7c58f3cf12ca17b614f',
    messagingSenderId: '87257533918',
    projectId: 'solidinity-app-account',
    storageBucket: 'solidinity-app-account.firebasestorage.app',
    iosBundleId: 'com.example.app1',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDCukaxBorYJ7EQp6FP7LN5VekhrDrauDg',
    appId: '1:87257533918:web:3f845ab15f8e352f7b614f',
    messagingSenderId: '87257533918',
    projectId: 'solidinity-app-account',
    authDomain: 'solidinity-app-account.firebaseapp.com',
    storageBucket: 'solidinity-app-account.firebasestorage.app',
  );
}