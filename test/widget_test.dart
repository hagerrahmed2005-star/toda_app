import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo/todo_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const TodoApp());
  });
}