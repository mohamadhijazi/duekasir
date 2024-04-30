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
        return windows;
      case TargetPlatform.linux:
        return linux;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCrdkirMWsfzp9Sq0mOBQB-tmKsQ4t282w',
    appId: '1:141487263884:web:55a6412c6b16fa4e8b2ba9',
    messagingSenderId: '141487263884',
    projectId: 'due-kasir',
    authDomain: 'due-kasir.firebaseapp.com',
    storageBucket: 'due-kasir.appspot.com',
    measurementId: 'G-ZTQMQSX2X1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBiGeO2GSCEN0mtNtRFYgo2OuxqWBNwT84',
    appId: '1:141487263884:android:b3509b8e220e65808b2ba9',
    messagingSenderId: '141487263884',
    projectId: 'due-kasir',
    storageBucket: 'due-kasir.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjmCDFO2d_LUK3R6frMpyjh8GEJQGTRSU',
    appId: '1:141487263884:ios:a3d235d7ee0edc708b2ba9',
    messagingSenderId: '141487263884',
    projectId: 'due-kasir',
    storageBucket: 'due-kasir.appspot.com',
    iosBundleId: 'com.devindo.dueKasir',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjmCDFO2d_LUK3R6frMpyjh8GEJQGTRSU',
    appId: '1:141487263884:ios:cc6d39902ffc485f8b2ba9',
    messagingSenderId: '141487263884',
    projectId: 'due-kasir',
    storageBucket: 'due-kasir.appspot.com',
    iosBundleId: 'com.devindo.dueKasir.RunnerTests',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCrdkirMWsfzp9Sq0mOBQB-tmKsQ4t282w',
    appId: '1:141487263884:web:b4e329a733ddaac28b2ba9',
    messagingSenderId: '141487263884',
    projectId: 'due-kasir',
    authDomain: 'due-kasir.firebaseapp.com',
    storageBucket: 'due-kasir.appspot.com',
    measurementId: 'G-PSTBJ99DHG',
  );

  static const FirebaseOptions linux = FirebaseOptions(
    apiKey: 'AIzaSyCrdkirMWsfzp9Sq0mOBQB-tmKsQ4t282w',
    appId: '1:141487263884:web:fcfb79661ae45dde8b2ba9',
    messagingSenderId: '141487263884',
    projectId: 'due-kasir',
    authDomain: 'due-kasir.firebaseapp.com',
    storageBucket: 'due-kasir.appspot.com',
    measurementId: 'G-Q5DFYV591Y',
  );
}
