import 'package:flutter/material.dart';
import 'package:flutter_architectures/mvvm/viewmodels/counter_view_model.dart';

class CounterViewPage extends StatefulWidget {
  const CounterViewPage({super.key});

  @override
  State<StatefulWidget> createState() => _CounterViewPageState();
}

class _CounterViewPageState extends State<CounterViewPage> {
  final CounterViewModel viewModel = CounterViewModel();

  void _incrementCounter() {
    setState(() {
      viewModel.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App MVVM'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count: ${viewModel.count}'),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
