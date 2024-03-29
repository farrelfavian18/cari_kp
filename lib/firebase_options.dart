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
    apiKey: 'AIzaSyDEhZ1gYjYZdI7sLgY0GilLawtqYRqlrPs',
    appId: '1:632262486451:web:0b47adccd349d60a00c3c6',
    messagingSenderId: '632262486451',
    projectId: 'carikp',
    authDomain: 'carikp.firebaseapp.com',
    storageBucket: 'carikp.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCfVLEVW0dQjbC9oD0xnYxI8genNLsfUko',
    appId: '1:632262486451:android:55825dec5dbedfdf00c3c6',
    messagingSenderId: '632262486451',
    projectId: 'carikp',
    storageBucket: 'carikp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC1sjszgGIiS3acUlV8NI3uI0d-o2BT2SE',
    appId: '1:632262486451:ios:245b7720484c329000c3c6',
    messagingSenderId: '632262486451',
    projectId: 'carikp',
    storageBucket: 'carikp.appspot.com',
    iosBundleId: 'com.example.cariKp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC1sjszgGIiS3acUlV8NI3uI0d-o2BT2SE',
    appId: '1:632262486451:ios:83004a2aa038bcf400c3c6',
    messagingSenderId: '632262486451',
    projectId: 'carikp',
    storageBucket: 'carikp.appspot.com',
    iosBundleId: 'com.example.cariKp.RunnerTests',
  );
}
