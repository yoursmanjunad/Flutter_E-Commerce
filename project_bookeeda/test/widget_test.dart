import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project_bookeeda/app/app.dart';

void main() {
  testWidgets(
    "Hello Readers Test",
    (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byType(Container), findsOneWidget);
      expect(find.text("Hello Readers!"), findsOneWidget);
      expect(find.byType(Center), findsOneWidget);
    },
  );
}
