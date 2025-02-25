import 'package:flutter/material.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Reverse App Test', () {
    FlutterDriver? driver;
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDownAll(() {
      if (driver != null) {
        driver?.close();
      }
    });
    var textField = find.byType('TextField');
    var button = find.text("Reverse");
    var reverse = find.text("olleH");
    test('Reverse String Test', () async {
      await driver?.tap(textField);
      await driver?.enterText("Hello");
      await driver?.waitForAbsent(reverse);
      await driver?.tap(button);

      await driver?.waitFor(reverse);
      await driver?.waitUntilNoTransientCallbacks();
      assert(reverse != null);
    });
  });
}
