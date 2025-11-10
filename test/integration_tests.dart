import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:homebrew/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Happy Paths', () {
    /*
      GIVEN I am on the Coffee Device Selection Screen, 
      
      WHEN I tap "French Press" AND I tap "Continue" 
      AND I input "16" AND I tap "Continue", 
      
      THEN I should see "32.4 g - medium ground coffee" 
      AND I should see "16 oz – water".
    */
    testWidgets("Recommendation for French Press and 16 Oz of water.",
        (WidgetTester tester) async {
      
      // Start the application
      await tester.pumpWidget(MyApp());
      await tester.pumpAndSettle();

      // Wait for Splash Screen to navigate to device screen (3 second timer)
      await tester.pump(const Duration(seconds: 4));
      await tester.pumpAndSettle();

      // Now we should be on choose device screen
      expect(find.text('What coffee maker are you using?'), findsOneWidget);

      // Tap French Press
      await tester.tap( find.byKey(Key('french-press')) );
      await tester.pumpAndSettle();

      // Tap Continue
      await tester.tap( find.byKey(Key('continue')) );
      await tester.pumpAndSettle();

      // Now we should be on input oz screen
      expect(find.text('How many ounces would you like?'), findsOneWidget);

      // Input 16 Oz
      await tester.enterText(find.byType(TextField), '16');
      await tester.pumpAndSettle();

      // Tap Continue
      await tester.tap( find.byKey(Key('continue')) );
      await tester.pumpAndSettle();

      // Now we should be on recommend screen
      expect(find.textContaining('Recommended'), findsOneWidget);

      // Check for correct recommendations
      expect(find.textContaining('32.4 - medium ground coffee'), findsOneWidget);
      expect(find.textContaining('16 oz - water'), findsOneWidget);
      
    }, skip: true);

    /*
      GIVEN I am on the Coffee Device Selection Screen, 
      
      WHEN I tap "Drip Machine" AND I tap "Continue" 
      AND I input "16" AND I tap "Continue", 
      
      THEN I should see "26.7 g - medium ground coffee" 
      AND I should see "16 oz – water".
    */
    testWidgets("Recommendation for Drip Machine and 16 Oz of water.",
        (WidgetTester tester) async {
      // ADD YOUR CODE HERE

    });

    /*
      GIVEN I have already selected a coffee device and input a # of oz
      AND I am on the Recommendation Screen, 
      
      WHEN I tap "Done", 
      
      THEN I should be taken back to the Coffee Device Selection Screen.
    */
      testWidgets("Going back to Choose Device Screen after clicking Done.",
        (WidgetTester tester) async {
      // ADD YOUR CODE HERE

    });

  });

  group('Sad Paths', () {

    // ADD YOUR SAD PATH TESTS HERE.





  });

}
