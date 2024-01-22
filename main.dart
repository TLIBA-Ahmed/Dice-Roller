import 'package:flutter/material.dart';
import 'mycustom_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(103, 134, 196, 136),
        body: MyCustomContainer("Dice Game !", Colors.black, Colors.redAccent,
            Colors.red, Color.fromARGB(255, 156, 57, 57), Colors.white38),
      ),
    ),
  );
}
