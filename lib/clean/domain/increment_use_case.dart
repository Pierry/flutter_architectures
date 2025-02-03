import 'package:flutter_architectures/clean/domain/counter_entity.dart';

class IncrementUseCase {
  CounterEntity call(CounterEntity entity) {
    return CounterEntity(entity.count);
  }
}