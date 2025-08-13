import 'dart:io';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

takeScreenshot(FlutterDriver driver, String path) async {
  List<int> pixels = await driver.screenshot();
  File("screenshots/screenshot_$path.png").writeAsBytesSync(pixels);
  print("Screenshot saved to screenshots/screenshot_$path.png");
}

// https://medium.com/flutter-community/testing-flutter-ui-with-flutter-driver-c1583681e337
// https://flutter.dev/docs/cookbook/testing/integration/introduction
void main() {
  group('MyApp', () {
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
      await Directory("screenshots").create();
    });

    tearDownAll(() async {
      print('tear down');
      await driver.close();
    });

    test('check driver health', () async {
      Health health = await driver.checkHealth();
      print(health.status);
    });

    test('screenshot second screen', () async {
      // screenshot
      await takeScreenshot(driver, 'first');

      // go to second
      await driver.tap(find.byValueKey('second'));

      // screenshot
      await takeScreenshot(driver, 'second');

      // go back
      await driver.tap(find.pageBack());
    });
  }, timeout: Timeout(Duration(minutes: 5)));
}
