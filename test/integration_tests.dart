import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:homebrew/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Happy Paths', () {
    /*
      Given I am on the Coffee Device Selection Screen
      When I tap "French Press"
      And I tap "Continue"
      And I enter "5"
      And I tap "Continue"
      Then I should see "63g - course ground coffee"
      And I should see "887g - water"
    */
    testWidgets("should give recommendation for French Press",
        (WidgetTester tester) async {
      // your code here
      await tester.pumpWidget(MyApp());
    });

    /*
      Given I am on the Coffee Device Selection Screen
      When I tap "Drip Machine"
      And I tap "Continue"
      And I enter "5"
      And I tap "Continue"
      Then I should see "52g - medium ground coffee"
      And I should see "887g - water"
    */
    testWidgets("should give recommendation for Drip Machine",
        (WidgetTester tester) async {
      //your code here
    });
  });

  group('Sad Paths', () {
    /*
      Given I am on the Coffee Device Selection Screen
      When I press "Continue"
      Then I expect to still be on the Coffee Device Selection Screen
    */
    testWidgets(
        "should not advance from Choose Device Screen without a selection",
        (WidgetTester tester) async {
      //your code here
    });

    /*
      Given I chose "French Press" on the Coffee Device Selection Screen
      And I advanced to the Choose Cups Screen
      When I press "Continue"
      Then I expect to still be on the Choose Cups Screen
    */
    testWidgets("should not advance from Choose Cups Screen without cups",
        (WidgetTester tester) async {
      //your code here
    });

    /*
      Given I chose "French Press" on the Coffee Device Selection Screen
      And I advanced to the Choose Cups Screen
      When I enter "-1"
      And I press "Continue"
      Then I expect to still be on the Choose Cups Screen
    */
    testWidgets(
        "should not advance from Choose Cups Screen with negative cup amount",
        (WidgetTester tester) async {
      //your code here
    });

    /*
      Given I chose "French Press" on the Coffee Device Selection Screen
      And I advanced to the Choose Cups Screen
      When I enter "a"
      And I press "Continue"
      Then I expect to still be on the Choose Cups Screen
    */
    testWidgets(
        "should not advance from Choose Cups Screen with letter for cup amount",
        (WidgetTester tester) async {
      //your code here
      //if you can restrict the keyboard to numbers only you can delete this test
    });

    /*
      Given I chose "Drip Machine" on the Coffee Device Selection Screen
      And I advanced to the Choose Cups Screen
      When I press "Continue"
      Then I expect to still be on the Choose Cups Screen
    */
    testWidgets("should not advance from Choose Cups Screen without cups",
        (WidgetTester tester) async {
      //your code here
    });

    /*
      Given I chose "Drip Machine" on the Coffee Device Selection Screen
      And I advanced to the Choose Cups Screen
      When I enter "-1"
      And I press "Continue"
      Then I expect to still be on the Choose Cups Screen
    */
    testWidgets(
        "should not advance from Choose Cups Screen with negative cup amount",
        (WidgetTester tester) async {
      //your code here
    });

    /*
      Given I chose "Drip Machine" on the Coffee Device Selection Screen
      And I advanced to the Choose Cups Screen
      When I enter "a"
      And I press "Continue"
      Then I expect to still be on the Choose Cups Screen
    */
    testWidgets(
        "should not advance from Choose Cups Screen with letter for cup amount",
        (WidgetTester tester) async {
      //your code here
      //if you can restrict the keyboard to numbers only you can delete this test
    });
  });

  group('Back Button', () {
    //make up your own tests to check that the back button works
    //on every page
  });
}
