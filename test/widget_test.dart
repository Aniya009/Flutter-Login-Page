import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';

void main() {
  testWidgets('Login page UI test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Check if Login text exists
    expect(find.text('Login'), findsOneWidget);

    // Check TextFields
    expect(find.byType(TextField), findsNWidgets(2));

    // Check button
    expect(find.text('Create Account'), findsOneWidget);
  });
}