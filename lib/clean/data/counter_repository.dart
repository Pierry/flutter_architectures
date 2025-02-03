import 'package:flutter_architectures/clean/domain/counter_entity.dart';

abstract class CounterRepository {
  CounterEntity get();
  void save(CounterEntity entity);
}