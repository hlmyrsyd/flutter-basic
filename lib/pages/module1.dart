import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Module 1: Hello Flutter'),
        ),
        body: Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}