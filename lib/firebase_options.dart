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
    apiKey: 'AIzaSyA4jSHouQotod5eqKwvf8Azo1xZM3BWDeA',
    appId: '1:244413504217:web:d32eea0bc129150affbcc8',
    messagingSenderId: '244413504217',
    projectId: 'graduation-project-93f75',
    authDomain: 'graduation-project-93f75.firebaseapp.com',
    storageBucket: 'graduation-project-93f75.appspot.com',
    measurementId: 'G-PY3Y9N8VBV',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCRc3SOkqvrWL-7OlljQfVKsilk-hYpOkA',
    appId: '1:244413504217:android:b2484d7fc1ef7f10ffbcc8',
    messagingSenderId: '244413504217',
    projectId: 'graduation-project-93f75',
    storageBucket: 'graduation-project-93f75.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-zI9BupKyPcAUr_2fvql4iz6XBCslHDc',
    appId: '1:244413504217:ios:de0dd62180721ba8ffbcc8',
    messagingSenderId: '244413504217',
    projectId: 'graduation-project-93f75',
    storageBucket: 'graduation-project-93f75.appspot.com',
    iosBundleId: 'com.example.graduationProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-zI9BupKyPcAUr_2fvql4iz6XBCslHDc',
    appId: '1:244413504217:ios:eb11e9e0fc7f3ed1ffbcc8',
    messagingSenderId: '244413504217',
    projectId: 'graduation-project-93f75',
    storageBucket: 'graduation-project-93f75.appspot.com',
    iosBundleId: 'com.example.graduationProject.RunnerTests',
  );
}
