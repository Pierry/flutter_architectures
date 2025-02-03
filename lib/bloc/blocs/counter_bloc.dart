import 'dart:async';

class CounterBloc {
  int _count = 0;

  final _countController = StreamController<int>();

  Stream<int> get countStream => _countController.stream;

  void incremet() {
    _count++;
    _countController.sink.add(_count);
  }

  void dispose() {
    _countController.close();
  }
}