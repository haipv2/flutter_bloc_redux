import 'package:bloc_counter/redux/containers/counter/counter.dart';
import 'package:bloc_counter/redux/containers/counter/increase_counter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Click '),
              Counter()
            ],
          ),
        ),
      ),
      floatingActionButton: IncreaseCountButton(),
    );
  }
}
