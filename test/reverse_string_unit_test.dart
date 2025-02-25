import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_app/unit_testing/reverset_string.dart';

void main() {
  test("String should be reversed", () {
    String initial = "Hello";
    final reversedString = ReverseString().reverse(initial);
    expect(reversedString, "olleH");
  });
}
