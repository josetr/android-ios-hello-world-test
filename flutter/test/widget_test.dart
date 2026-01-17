// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:hello_world_flutter/main.dart';

void main() {
  testWidgets('Hello World changes after tap', (WidgetTester tester) async {
    await tester.pumpWidget(const HelloWorldApp());

    expect(find.text('Hello World'), findsOneWidget);
    expect(find.text('Hello Button'), findsNothing);

    await tester.tap(find.text('Tap me'));
    await tester.pump();

    expect(find.text('Hello World'), findsNothing);
    expect(find.text('Hello Button'), findsOneWidget);
  });
}
