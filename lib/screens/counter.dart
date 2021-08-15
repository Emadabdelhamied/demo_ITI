import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget {
  int count;
  CounterPage({this.count});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Counter Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Text('Counter = $count')),
        ),
      ),
    );
  }
}
