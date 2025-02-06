import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            height: 100,
            width: 200,
            alignment: Alignment.center,
            color: Colors.lightBlue,
            child: Text('Rheno Febrian!\nS1 Informatika'),
          ),
        ),
      ),
    );
  }
}
