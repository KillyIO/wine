import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/app_development.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(AppDevelopment());
  await tester.pumpAndSettle();
}
