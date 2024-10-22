import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:uts_flutter/main.dart'; // Sesuaikan nama project jika berbeda

void main() {
  testWidgets('Navigates to Login Page from Landing Page',
      (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the Landing Page is displayed.
    expect(find.text('Landing Page'), findsOneWidget);
    expect(find.text('Go to Login'), findsOneWidget);

    // Tap the 'Go to Login' button and trigger a frame.
    await tester.tap(find.text('Go to Login'));
    await tester.pumpAndSettle();

    // Verify that the Login Page is displayed after tapping the button.
    expect(find.text('Login Page'), findsOneWidget);
  });

  testWidgets('Displays error message on invalid login',
      (WidgetTester tester) async {
    // Build the app and navigate to the Login Page.
    await tester.pumpWidget(MyApp());
    await tester.tap(find.text('Go to Login'));
    await tester.pumpAndSettle();

    // Enter incorrect username and password.
    await tester.enterText(find.byType(TextField).at(0), 'wrong_user');
    await tester.enterText(find.byType(TextField).at(1), 'wrong_password');

    // Tap the Login button.
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Verify that the error message is displayed.
    expect(find.text('Invalid username or password'), findsOneWidget);
  });
}
