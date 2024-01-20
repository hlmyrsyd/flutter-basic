import 'package:flutter/material.dart';

class Animal {
  String name;
  String sound;

  Animal(this.name, this.sound);

  void makeSound() {
    print(sound);
  }
}

class Cat extends Animal {
  Cat() : super('Cat', 'Meow');
}

class Dog extends Animal {
  Dog() : super('Dog', 'Woof');
}

class Cow extends Animal {
  Cow() : super('Cow', 'Moo');
}

class Page2 extends StatelessWidget {
  final List<Animal> animals = [Cat(), Dog(), Cow()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Module 2: Animal Sound'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tap on an Animal to hear its sound:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              for (var animal in animals)
                ElevatedButton(
                  onPressed: () {
                    animal.makeSound();
                  },
                  child: Text(animal.name),
                ),
            ],
          ),
        ),
      ),
    );
  }
}