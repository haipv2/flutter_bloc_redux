
import 'package:bloc_counter/bloc_rxdart/models/counter.dart';

class CounterProvider {
  CounterProvider();

  int increment (Counter counter) {
    return counter.count++;
  }
}