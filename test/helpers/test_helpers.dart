import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

class TestApp extends StatelessWidget {
  const TestApp({
    required this.child,
    super.key,
    this.navigatorObservers = const [],
  });

  final Widget child;
  final List<NavigatorObserver> navigatorObservers;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: child,
      navigatorObservers: navigatorObservers,
    );
  }
}

Future<void> pumpApp(
  WidgetTester tester, {
  required Widget child,
  List<NavigatorObserver> navigatorObservers = const [],
}) async {
  await tester.pumpWidget(
    TestApp(
      navigatorObservers: navigatorObservers,
      child: child,
    ),
  );
}

extension WidgetTesterX on WidgetTester {
  Future<void> pumpApp({
    required Widget child,
    List<NavigatorObserver> navigatorObservers = const [],
  }) async {
    await pumpWidget(
      TestApp(
        navigatorObservers: navigatorObservers,
        child: child,
      ),
    );
  }
}
