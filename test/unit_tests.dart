import 'package:flutter_test/flutter_test.dart';
import 'package:homebrew/utils/coffee_tools.dart';

void main() {
  // This group will run several tests for your ounces to grams conversion.
  group("Ounces to Grams", () {

    test('calculates grams for 1 ounce', () {
      // Expect 28.35 g from 1 oz.

    });

    test('calculates grams on positive number of ounces', () {
      // Expect 453.6 g from 16 oz.

    });

    test('throws ArgumentError on zero', () {
      // Expect throwsArgumentError from passing 0.

    });

    test('throws ArgumentError on negative number', () {
      // Expect throwsArgumentError from passing -1.

    });
  });

  // This group will run several tests on our French Press 1/14 ratio.
  // Test for positive inputs. (No need for negative or 0)
  group("French Press Ratio", () {


  });

  // This group will run several tests on our Drip Machine 1/17 ratio.
  // Test for positive inputs. (No need for negative or 0)
  group("Drip Machine Ratio", () {


  });

}
