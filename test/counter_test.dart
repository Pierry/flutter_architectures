import 'package:flutter/material.dart';
import 'package:flutter_architectures/mvvm/view/counter_view.dart';
import 'package:flutter_architectures/mvvm/viewmodels/counter_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final viewModel = CounterViewModel();

    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider<CounterViewModel>.value(
          value: viewModel,
          child: CounterViewPage(),
        ),
      ),
    );

    expect(find.text('Count: 0'), findsOneWidget);

    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    expect(find.text('Count: 1'), findsOneWidget);
  });
}
