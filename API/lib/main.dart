import 'package:flutter/material.dart';
import 'package:task_1/screens/userScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserScreen(),
    );
  }
}
