import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:student_profile_app/main.dart';

void main() {
  testWidgets('Check UI components', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Welcome to Flutter'), findsOneWidget);
    expect(find.text('Click Me'), findsOneWidget);
    expect(find.byKey(const Key('testButton')), findsOneWidget);
  });
}