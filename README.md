# Linuxtag 2025

## Prerequisites

### Flutter & Dart
```bash
sudo snap install android-studio --classic
sudo snap install flutter --classic
flutter upgrade
```
Add `~/snap/flutter/common/flutter/bin/cache/dart-sdk/bin` to path for dart.

### Android Studio & Android SDK
https://flutter.dev/docs/get-started/install/linux
* Tools → SDK Manager → Android 14.0 (34)
* Tools → SDK Manager → SDK Tools → Android SDK Command-line Tools
* Tools → AVD Manager → Create Virtual Device
* File → Settings → Plugins → Flutter
* File → Settings → Plugins → Dart
* `flutter doctor --android-licenses`
* Dart SDK is in `~/snap/flutter/common/flutter/bin/cache/dart-sdk`

## Dart
* dart scripting
* list, maps, files, print
* async, await
* http
* json

## Flutter command line
* `flutter doctor`
* `flutter create`
* `flutter run`
* pubspec.yaml → `flutter pub get`

## Emulator
* `flutter emulators`
* `flutter emulators --create`
* `flutter emulators --launch flutter_emulator`

## App
* MaterialApp
  * Theme
  * Hot Reloading
* Widgets → StatefulWidget
  * setState
* Navigator with parameters

## Debugging

## Testing
* `flutter test`
* test driver → `flutter drive --target=test_driver/screenshot.dart`

## Deployment
* `flutter build appbundle --no-shrink`
* `flutter build apk --no-shrink --split-per-abi`
* https://docs.flutter.dev/deployment/android#configure-signing-in-gradle
* https://github.com/elsamuko/clusterup
* https://play.google.com/store/apps/details?id=com.devsamuko.clusterup
* https://github.com/elsamuko/bbtraining
* https://play.google.com/store/apps/details?id=com.devsamuko.bbtraining

