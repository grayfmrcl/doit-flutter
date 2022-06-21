import 'package:doit_flutter/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Home Screen test', (WidgetTester tester) async {
    const title = 'Title';
    const subtitle = 'Subtitle';
    await tester.pumpWidget(const DoIt(
      title: title,
      subtitle: subtitle,
    ));

    final titleFinder = find.text(title);
    final messageFinder = find.text(subtitle);

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
