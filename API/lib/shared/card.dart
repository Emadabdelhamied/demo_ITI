import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  String title;
  MyCard({this.title});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(widget.title),
      )),
    );
  }
}
