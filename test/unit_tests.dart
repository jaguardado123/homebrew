import 'package:flutter_test/flutter_test.dart';
import 'package:homebrew/utils/coffee_tools.dart';

void main() {
  // This group will run several tests on our cups to ounces conversion.
  group("cupsToOunces", () {
    test('calculates ounces on 1 cup', () {
      // Expect 8 oz from 1 cup.
    });

    test('calculates ounces on positive number of cups', () {
      // Expect 40 oz from 5 cups.
    });

    test('throws ArgumentError on zero', () {
      // Expect throwsArgumentError from passing 0.
    });

    test('throws ArgumentError on negative number', () {
      // Expect throwsArgumentError from passing -1.
    });
  });

  // This group will run several tests on our cups to ounces conversion.
  // Test for positive, negative, and 0 inputs.
  group("ouncesToGrams", () {});

  // This group will run several tests on our French Press 1/14 ratio.
  // Test for positive inputs. (No need for negative or 0)
  group("frenchPress", () {});

  // This group will run several tests on our Drip Machine 1/17 ratio.
  // Test for positive inputs. (No need for negative or 0)
  group("dripMachine", () {});
}
