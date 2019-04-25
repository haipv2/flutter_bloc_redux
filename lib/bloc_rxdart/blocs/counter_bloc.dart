
import 'dart:async';

import 'package:bloc_counter/bloc_rxdart/models/counter.dart';
import 'package:rxdart/rxdart.dart';

import 'package:bloc_counter/bloc_rxdart/resources/counter_provider.dart';

class CounterBloc {
  Counter _counter = new Counter(0);
  var _repository = CounterProvider();

  final _publishSubj = PublishSubject<Counter>();
  Observable<Counter> get counterStream => _publishSubj.stream;

  CounterBloc(){
//    _publishSubj.transform(_itemTransformer());
  }

  increment (int i) async {

    _repository.increment(_counter);
    _publishSubj.sink.add(_counter);
  }

  void dispose() {
    _publishSubj.close();
  }

}

final bloc = CounterBloc();