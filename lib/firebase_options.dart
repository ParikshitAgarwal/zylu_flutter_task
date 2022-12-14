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
    apiKey: 'AIzaSyBx13qFUnnJFAmRMHiMZIP29iFw2NNaf1A',
    appId: '1:728074998038:web:dc26180155c2f18a08c037',
    messagingSenderId: '728074998038',
    projectId: 'zylu-task',
    authDomain: 'zylu-task.firebaseapp.com',
    storageBucket: 'zylu-task.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjXaLK2rvr3YdfWWnHeefxJntY10KR9z0',
    appId: '1:728074998038:android:58030d61c3e5e1f808c037',
    messagingSenderId: '728074998038',
    projectId: 'zylu-task',
    storageBucket: 'zylu-task.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDP59HV7KF3lDyLdQ5oaQHriP6NWJHQ2S8',
    appId: '1:728074998038:ios:ced81a23b26dbac908c037',
    messagingSenderId: '728074998038',
    projectId: 'zylu-task',
    storageBucket: 'zylu-task.appspot.com',
    iosClientId: '728074998038-te6ukmttu12mr20h1qf66vli287qcg3f.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterTaskZylu',
  );
}
