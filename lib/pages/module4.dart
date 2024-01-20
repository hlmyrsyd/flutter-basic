import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final String messageFromScreen2;

  Screen1({this.messageFromScreen2 = 'Click to go to Screen 2'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Message from Screen 2: $messageFromScreen2'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(messageToScreen1: 'Hello from Screen 1!'),
                  ),
                );
              },
              child: Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  final String messageToScreen1;

  Screen2({required this.messageToScreen1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Message to Screen 1 : $messageToScreen1'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context, 'Back from Screen 2!'
                );
              },
              child: Text('Go to Screen 1'),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen1(),
    );
  }
}