// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBfWRA5uM2M1IUNMEeqVzS2HTVv2p-6qKw',
    appId: '1:846759324672:web:5940b58060ae05cf633ce5',
    messagingSenderId: '846759324672',
    projectId: 'flutter-varios-4518b',
    authDomain: 'flutter-varios-4518b.firebaseapp.com',
    databaseURL: 'https://flutter-varios-4518b-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-varios-4518b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA7qyN4oWcqBTdyW7rEhZrBqflbL4GM9Ts',
    appId: '1:846759324672:android:c119c1d9b373471a633ce5',
    messagingSenderId: '846759324672',
    projectId: 'flutter-varios-4518b',
    databaseURL: 'https://flutter-varios-4518b-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-varios-4518b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDocdwAjTMKDw_2qdkh2btnXelZJhAENFM',
    appId: '1:846759324672:ios:43702e20a9ac461e633ce5',
    messagingSenderId: '846759324672',
    projectId: 'flutter-varios-4518b',
    databaseURL: 'https://flutter-varios-4518b-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-varios-4518b.appspot.com',
    androidClientId: '846759324672-b9qfri90286mkthpn6hcv73d24vioj76.apps.googleusercontent.com',
    iosClientId: '846759324672-q8fg08bfu61aiuh7b1tt584gr9p5m6ca.apps.googleusercontent.com',
    iosBundleId: 'com.example.ambapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDocdwAjTMKDw_2qdkh2btnXelZJhAENFM',
    appId: '1:846759324672:ios:43702e20a9ac461e633ce5',
    messagingSenderId: '846759324672',
    projectId: 'flutter-varios-4518b',
    databaseURL: 'https://flutter-varios-4518b-default-rtdb.firebaseio.com',
    storageBucket: 'flutter-varios-4518b.appspot.com',
    androidClientId: '846759324672-b9qfri90286mkthpn6hcv73d24vioj76.apps.googleusercontent.com',
    iosClientId: '846759324672-q8fg08bfu61aiuh7b1tt584gr9p5m6ca.apps.googleusercontent.com',
    iosBundleId: 'com.example.ambapp',
  );
}
