import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Module 3: Flutter Fundamentals'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flutter Fundamentals',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star, color: Colors.yellow, size: 50),
                  Icon(Icons.star, color: Colors.yellow, size: 50),
                  Icon(Icons.star, color: Colors.yellow, size: 50),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 100,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text(
                  'Container with Centered Text',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('Button Pressed!');
                }, 
                child: Text('Press Me'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Enter your name'),
                onChanged: (text) {
                  print('Input changed: $text');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}