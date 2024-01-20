import 'package:flutter/material.dart';
import 'pages/module1.dart';
import 'pages/module2.dart';
import 'pages/module3.dart';
import 'pages/module4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySwipePage(),
    );
  }
}

class MySwipePage extends StatelessWidget {
  final List<Widget> pages = [Page1(), Page2(), Page3(), Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Swipeable Page"),
      ),
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}