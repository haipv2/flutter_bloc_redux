import 'package:bloc_counter/bloc/resources/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:bloc_counter/bloc/blocs/counter_bloc.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.getCount,
      initialData: CounterProvider().count,
      builder: (context,snapshot) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('count times: '),
            Text('${snapshot.data}',
//              style: TextStyle(color: Colors.red),)
              style: Theme.of(context).textTheme.body1,)
          ],
        ),

      ),
    );
  }
}

