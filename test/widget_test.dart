import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/main.dart';

main() {
  testWidgets('Test Login Widget', (tester) async {
    await tester.pumpWidget(const MyApp());
    var textField = find.byType(TextField);
    expect(textField, findsWidgets);
    await tester.enterText(find.byKey(const Key('emailKey')), 'Mahmoud');
    // await tester.enterText(find.byKey(const Key('emaialKey')), 'Mahmoud');
    await tester.enterText(find.byKey(const Key('passwordKey')), '123456mA@');

    var loginBtn = find.byType(ElevatedButton);
    expect(loginBtn, findsOneWidget);
    await tester.tap(loginBtn);
    await tester.pump();
  });
}
