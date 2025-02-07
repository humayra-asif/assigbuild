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
    apiKey: 'AIzaSyARqjOQAtExqqxXxtzEZKVY5MDZH1g52Q4',
    appId: '1:942201092002:web:40d089e7a0ae63b84e64fb',
    messagingSenderId: '942201092002',
    projectId: 'build-f1834',
    authDomain: 'build-f1834.firebaseapp.com',
    storageBucket: 'build-f1834.firebasestorage.app',
    measurementId: 'G-9YRLLJSGJZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBhZIhis7ZRk0ej75AtgyODiK9z2mkTNvM',
    appId: '1:942201092002:android:9b7665eb8378932b4e64fb',
    messagingSenderId: '942201092002',
    projectId: 'build-f1834',
    storageBucket: 'build-f1834.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSjbqkhtrhehekZbvMWhqrqF-qCMfuF1U',
    appId: '1:942201092002:ios:ef763abf9d8d3dd44e64fb',
    messagingSenderId: '942201092002',
    projectId: 'build-f1834',
    storageBucket: 'build-f1834.firebasestorage.app',
    iosBundleId: 'com.example.build',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSjbqkhtrhehekZbvMWhqrqF-qCMfuF1U',
    appId: '1:942201092002:ios:ef763abf9d8d3dd44e64fb',
    messagingSenderId: '942201092002',
    projectId: 'build-f1834',
    storageBucket: 'build-f1834.firebasestorage.app',
    iosBundleId: 'com.example.build',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyARqjOQAtExqqxXxtzEZKVY5MDZH1g52Q4',
    appId: '1:942201092002:web:30356ec246a3ca054e64fb',
    messagingSenderId: '942201092002',
    projectId: 'build-f1834',
    authDomain: 'build-f1834.firebaseapp.com',
    storageBucket: 'build-f1834.firebasestorage.app',
    measurementId: 'G-16MT3W2VC5',
  );

}