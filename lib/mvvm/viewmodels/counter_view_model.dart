import 'package:flutter/material.dart';
import 'package:flutter_architectures/mvvm/models/counter_model.dart';

class CounterViewModel with ChangeNotifier {
  final CounterModel _model = CounterModel();

  int get count => _model.count;

  void increment() {
    _model.count++;
    notifyListeners();
  }
}