import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'package:bloc_counter/bloc/resources/counter_provider.dart';

class CounterBloc {
  final counterController = StreamController(); //create Stream controller
  final CounterProvider provider = CounterProvider(); //create an instance of provider
  Stream get getCount => counterController.stream;

  void updateCount() {
    provider.increaseCoun(); // call method to increase count
    counterController.sink.add(provider.count); //add the count to sink
  }

  void dispose() {
    counterController.close(); // close our StreamController
  }
}

final bloc = CounterBloc(); // create instance of the counter bloc

