import 'package:boilerplate_app/main_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App should build without crashing', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());
  });
}
