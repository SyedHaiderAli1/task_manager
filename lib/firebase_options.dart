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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBumsvRvpDsC9qhXzIb5FjmAMESeUI0wco',
    appId: '1:614715495051:web:d00d66c6f74043af73fa8e',
    messagingSenderId: '614715495051',
    projectId: 'verticalsols-tasks',
    authDomain: 'verticalsols-tasks.firebaseapp.com',
    storageBucket: 'verticalsols-tasks.appspot.com',
    measurementId: 'G-P1FX4KYH60',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD09eoHs8dc1n6VWge5VTavfm3TntWBdGk',
    appId: '1:614715495051:android:734a7128d2268ccf73fa8e',
    messagingSenderId: '614715495051',
    projectId: 'verticalsols-tasks',
    storageBucket: 'verticalsols-tasks.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDgcI4UoQ9z8Q93XaQskaf4yDT64BlxkR8',
    appId: '1:614715495051:ios:652aa74cda5010ef73fa8e',
    messagingSenderId: '614715495051',
    projectId: 'verticalsols-tasks',
    storageBucket: 'verticalsols-tasks.appspot.com',
    androidClientId: '614715495051-84efbh2r5cf2311te49hmrko3acdg8tg.apps.googleusercontent.com',
    iosClientId: '614715495051-m32m5kgit2hsq0rbth6jss9egkm8ms0g.apps.googleusercontent.com',
    iosBundleId: 'com.example.taskManager',
  );
}
