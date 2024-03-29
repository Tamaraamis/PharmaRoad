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
    apiKey: 'AIzaSyBv-G7XK0XGgq-ljmGpo7yPYNA43BulR5s',
    appId: '1:357683093346:web:2fe7f9926b4fd22691d63b',
    messagingSenderId: '357683093346',
    projectId: 'pharmaroad-1d43a',
    authDomain: 'pharmaroad-1d43a.firebaseapp.com',
    storageBucket: 'pharmaroad-1d43a.appspot.com',
    measurementId: 'G-W31QLKVL1Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA4eoyKJZfX0JdSUk3QmIkrggHlYIdstiE',
    appId: '1:357683093346:android:ceb5226854b2313f91d63b',
    messagingSenderId: '357683093346',
    projectId: 'pharmaroad-1d43a',
    storageBucket: 'pharmaroad-1d43a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBMECYqxVRusKn4wXekPRFF71NTFf3ZIiA',
    appId: '1:357683093346:ios:846c5fc0f655bb7e91d63b',
    messagingSenderId: '357683093346',
    projectId: 'pharmaroad-1d43a',
    storageBucket: 'pharmaroad-1d43a.appspot.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBMECYqxVRusKn4wXekPRFF71NTFf3ZIiA',
    appId: '1:357683093346:ios:846c5fc0f655bb7e91d63b',
    messagingSenderId: '357683093346',
    projectId: 'pharmaroad-1d43a',
    storageBucket: 'pharmaroad-1d43a.appspot.com',
    iosBundleId: 'com.example.flutterApplication2',
  );
}
