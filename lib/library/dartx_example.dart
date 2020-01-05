import 'dart:io';

import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';
import 'package:dartx/dartx_io.dart';

class DartXExample extends StatefulWidget {
  @override
  _DartXExampleState createState() => _DartXExampleState();
}

class _DartXExampleState extends State<DartXExample> {
  var output;
  var name = "Pawan";

  var slice = [1, 2, 3, 4, 5];

  var persons = [
    Person("Ajay", 20),
    Person("Sachin", 15),
    Person("Rahul", 2),
    Person("Sanjay", 22),
    Person("Yadav", 14),
  ];

  var nestedList = [
    [1, 2, 3],
    [4, 5, 6]
  ];

  var numberInRange = 123.coerceIn(0, 1000);
  var numberOutOfRange = -123.coerceIn(0, 1000);

  var notBlank = '   .'.isBlank; // false
  var blank = '  '.isBlank; // true

  var number = '12345'.toIntOrNull(); // 12345
  var notANumber = '123-45'.toIntOrNull(); // null

  var file = File('some/path/testFile.dart');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart X"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 20,
            runSpacing: 20.0,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Slice"),
                onPressed: () {
                  output = slice.slice(1, -3);
                  setState(() {});
                },
              ),
              RaisedButton(
                child: Text("Sort"),
                onPressed: () {
                  output = persons.sortedBy((p) => p.age);

                  for (var x in output) {
                    print(x.name);
                  }
                  setState(() {});
                },
              ),
              RaisedButton(
                child: Text("NEST"),
                onPressed: () {
                  output = nestedList.flatten();
                  setState(() {});
                },
              ),
              RaisedButton(
                child: Text("Do Custom Stuff"),
                onPressed: () {
                  print(file.name); // testFile.dart
                  print(file.nameWithoutExtension); // testFile
                },
              ),
              RaisedButton(
                child: Text("Our Extension"),
                onPressed: () {
                  output = name.toCamelCase();
                  setState(() {});
                },
              ),
              Text(output?.toString() ?? "")
            ],
          ),
        ),
      ),
    );
  }
}

extension PKExt on String {
  String get dotsAtEnd => "$this...";

  String toCamelCase() =>
      "${this[0].toLowerCase()}${this[1].toUpperCase()}${this.substring(2).toLowerCase()}";
}

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}
