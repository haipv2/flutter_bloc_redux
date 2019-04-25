import 'package:bloc_counter/bloc_rxdart/blocs/counter_bloc.dart';
import 'package:bloc_counter/bloc_rxdart/models/counter.dart';
import 'package:flutter/material.dart';


class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count =0;
  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StreamBuilder<Counter>(
          stream: bloc.counterStream,
          builder: (context, AsyncSnapshot<Counter> snapshot) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('count:', style: TextStyle(fontSize: 18.0),),
                  Text('${snapshot.data == null ? 0 : snapshot.data.count}'),
                ],
              ),
            );
          }
        ),floatingActionButton: FloatingActionButton(onPressed: (){
          bloc.increment(count);
      }, child: Icon(Icons.add),),
      ),
    );
  }
}

