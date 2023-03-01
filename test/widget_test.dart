import 'package:analyzer_studio/analyzer_studio_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AnalyzerStudioApp());

    expect(find.text('1'), findsNothing);
    expect(find.text('0'), findsNothing);
  });
}
