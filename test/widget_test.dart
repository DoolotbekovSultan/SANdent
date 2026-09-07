import 'package:flutter_test/flutter_test.dart';

import 'package:san_dent/app.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const SANdentApp());
    expect(find.byType(SANdentApp), findsOneWidget);
  });
}
