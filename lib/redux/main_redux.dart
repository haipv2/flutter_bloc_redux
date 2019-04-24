//import 'package:bloc_counter/redux/modles/app_state.dart';
import 'package:bloc_counter/redux/modles/app_state.dart';
import 'package:bloc_counter/redux/pages/home_page.dart';
import 'package:bloc_counter/redux/reducers/counter_reducer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_logging/redux_logging.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String title ='Redux counter';

  @override
  Widget build(BuildContext context) {
    //store holds app state tree
    final store = Store<AppState>(
      appReducer,
      initialState: new AppState(),
       middleware: [LoggingMiddleware.printer()],

    );
    return StoreProvider(
    store: store,
      child: MaterialApp(
      title: title,
      home: HomePage(title)
    )

    );
  }

  AppState appReducer(AppState state, action) {
    return AppState(
      isLoading: false,
      count: counterReducer(state.count,action)
    );
  }
}

