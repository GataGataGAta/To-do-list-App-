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
    apiKey: 'AIzaSyDYWqoKZtb0ZDik-ElzEDsOE1VSG93oLMY',
    appId: '1:1052705957481:web:c9e48f24c4de5fe1dfe4f8',
    messagingSenderId: '1052705957481',
    projectId: 'todolist-414a7',
    authDomain: 'todolist-414a7.firebaseapp.com',
    storageBucket: 'todolist-414a7.appspot.com',
    measurementId: 'G-HVDRXJMPLY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCgQrqtgIvX6Ai2TY_LX6qSlxmqdqbqWhk',
    appId: '1:1052705957481:android:d9f9cf8d1ef68b0fdfe4f8',
    messagingSenderId: '1052705957481',
    projectId: 'todolist-414a7',
    storageBucket: 'todolist-414a7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5Yjef3NlJEQIfB9ntqM50zNJY-wiR5ZA',
    appId: '1:1052705957481:ios:b803062a9083f8d1dfe4f8',
    messagingSenderId: '1052705957481',
    projectId: 'todolist-414a7',
    storageBucket: 'todolist-414a7.appspot.com',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5Yjef3NlJEQIfB9ntqM50zNJY-wiR5ZA',
    appId: '1:1052705957481:ios:c81421753408735fdfe4f8',
    messagingSenderId: '1052705957481',
    projectId: 'todolist-414a7',
    storageBucket: 'todolist-414a7.appspot.com',
    iosBundleId: 'com.example.todoapp.RunnerTests',
  );
}