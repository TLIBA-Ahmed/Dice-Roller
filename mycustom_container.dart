//import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';
//import 'package:flutter_application_1/dice_roller.dart';
import 'style_text.dart';

const Alignment startAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;

class MyCustomContainer extends StatefulWidget {
  const MyCustomContainer(this.text, this.color1, this.color2, this.color3,
      this.color4, this.color5,
      {super.key});

  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color color5;
  final String text;
  @override
  State<MyCustomContainer> createState() => _MyCustomContainer();
}

class _MyCustomContainer extends State<MyCustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: startAlignment,
              end: endAlignment,
              colors: [
                widget.color1,
                widget.color2,
                widget.color3,
                widget.color4,
                widget.color5
              ]),
        ),
        child: SizedBox(
            width: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(height: 25),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [StyleText(widget.text)]),
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [DiceRoller()])
            ])));
  }
}
