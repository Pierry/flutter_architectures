import 'package:flutter/material.dart';
import 'package:flutter_architectures/clean/data/counter_repository.dart';
import 'package:flutter_architectures/clean/domain/counter_entity.dart';
import 'package:flutter_architectures/clean/domain/increment_use_case.dart';

class CounterViewModel with ChangeNotifier {
  final CounterRepository repository;
  final IncrementUseCase useCase;

  CounterEntity _entity = CounterEntity(0);

  CounterViewModel({required this.repository, required this.useCase}) {
    _entity = repository.get();
  }

  int get count => _entity.count;

  void increment() {
    _entity = useCase(_entity);
    repository.save(_entity);
    notifyListeners();
  }
}