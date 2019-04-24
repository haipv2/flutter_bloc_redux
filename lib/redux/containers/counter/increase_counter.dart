import 'package:bloc_counter/redux/actions/counter_action.dart';
import 'package:bloc_counter/redux/modles/app_state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class IncreaseCountButton extends StatelessWidget {
  IncreaseCountButton();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, VoidCallback>(
      converter: (Store<AppState> store){
        return () {
          store.dispatch(IncrementCountAction());
        };
      },
      builder: (BuildContext context, VoidCallback increase) {
        return FloatingActionButton(
          onPressed: increase,
            child: Icon(Icons.add),
        );
      },
    );
  }


}
