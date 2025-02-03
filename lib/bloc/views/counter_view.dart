import 'package:flutter/material.dart';
import 'package:flutter_architectures/bloc/blocs/counter_bloc.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<StatefulWidget> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  final CounterBloc _bloc = CounterBloc();

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BloC'),),
      body: Center(
        child: StreamBuilder<int>(
          stream: _bloc.countStream,
          initialData: 0,
          builder: (context, snapshot) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Count ${snapshot.data}'),
                ElevatedButton(
                  onPressed: _bloc.incremet,
                  child: Text('Increment'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}