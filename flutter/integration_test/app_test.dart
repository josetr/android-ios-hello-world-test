import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:hello_world_flutter/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Hello World changes after tap', (tester) async {
    await tester.pumpWidget(const HelloWorldApp());

    expect(find.text('Hello World'), findsOneWidget);
    expect(find.text('Hello Button'), findsNothing);

    await tester.tap(find.text('Tap me'));
    await tester.pump();

    expect(find.text('Hello World'), findsNothing);
    expect(find.text('Hello Button'), findsOneWidget);
  });
}
